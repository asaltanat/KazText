function template = TemplateMaker ()
    lets = [];
    for i =1:41
        a = ~imread("kazakh/0"+i+".bmp");
        lets = [lets a];
    end
    for i = 1:4
        a = ~imread("kazakh/a"+i+".bmp");
        lets = [lets a];
    end
    for i = 6:42
        a = ~imread("kazakh/a"+i+".bmp");
        lets = [lets a];        
    end
    N=ones(1,82)*28;
    template=mat2cell(lets,49,N);
end