function sI = cutter(I)
[M, N] = size(I); 
t = M;
r = 1;
l = N;
b = 1;
for i = 1:M
    for j = 1:N
        if(I(i, j) == 0)
            if(i<t)
                t = i;
            end
            if(i>b)
                b = i;
            end
            if(j<l)
                l = j;
            end
            if(j>r)
                r = j;
            end
        end
    end
end
cI = zeros(b-t+1, r-l+1);
cI = I(t:b, l:r);
sI = imresize(cI, [49 28]);

end