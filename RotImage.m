function rotim = RotImage(img)
    im = img;
    img = double(img);
    img = edge(img,'canny');
    [H, th, R] = hough(img);
    peak = houghpeaks(H);
    ang = th(peak(2));
    if(ang>0)
        ang=ang-90;
    else
        ang = ang+90; 
    end
    rotim = (imrotate((~im),ang,'bicubic'));

end