function K = elements(im)
    [ki, kj] = size(im);
    cr = 1;
    global T;
    T = zeros(ki, kj);
    for j = 1:kj
        for i = 1:ki
            u=T;
            if(im(i, j) == 1 && T(i, j)==0)
                T = cycle(im, i, j, cr, u);
                cr = cr+1;
            end
        end
    end
    K=T;
end

function Res = cycle(im, i, j, cr, u)
    global T;
    if(T(i, j) ~= 0)
        return;
    end
    if(T(i, j) == 0)
    T(i, j) = cr;
    [ik, jk] = size(im);
    if(i<ik && im(i+1, j) == 1 && T(i+1, j)==0)
        Res = cycle(im, i+1, j, cr, u);
    end
    if (j<jk && im(i, j+1)==1 && T(i, j+1)==0)
        T = cycle(im, i, j+1, cr, u);
    end
    if (i>1 && im(i-1, j)==1 && T(i-1, j)==0)
        T = cycle(im, i-1, j, cr, u);
    end
    if (j>1 && im(i, j-1)==1 && T(i, j-1)==0)
        T = cycle(im, i, j-1, cr, u);
    end
    if (j<jk && i<ik && im(i+1, j+1)==1 && T(i+1, j+1)==0)
        T = cycle(im, i+1, j+1, cr, u);
    end
    if (i>1 && j<jk && im(i-1, j+1)==1 && T(i-1, j+1)==0)
        T = cycle(im, i-1, j+1, cr, u);
    end
    if (j>1 && i<ik && im(i+1, j-1)==1 && T(i+1, j-1)==0)
        T = cycle(im, i+1, j-1, cr, u);
    end
    if (j>1 && i>1 && im(i-1, j-1)==1 && T(i-1, j-1)==0)
        T = cycle(im, i-1, j-1, cr, u);
    end
    Res = T;
    end
end