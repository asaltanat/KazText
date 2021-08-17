function [X Y]=LineDiv(imagen)
imagen=cutit(imagen);
m=size(imagen,1);
for s=1:m
    if sum(imagen(s,:))==0 
        X=imagen(1:s-1,:);  
        Y=imagen(s:m,:); 
        X=cutit(X);        
        Y=cutit(Y);
        break;
    else
        X=imagen;
        Y=[];
end
end
end
function image_out=cutit(image_in)
[r c]=find(image_in);
image_out=image_in(min(r):max(r),min(c):max(c));
end