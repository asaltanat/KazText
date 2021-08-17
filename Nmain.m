clear all
imagen=imread('inkaz2.JPG');
imagen1 = imagen;
if size(imagen,3)==3  %RGB Color
   imagen=rgb2gray(imagen);
end

threshold=graythresh(imagen);
imagen=im2bw(imagen,0.50);
imagen = RotImage(imagen);
figure(1)
imshow(imagen);
imagen=bwareaopen(imagen,22);
B=imagen;
sentence = [];
global template
template = TemplateMaker();

while 1
    [A B]=LineDiv(B);
    imagen=A;
    elim = elements(imagen);
    elMax = max(max(elim));
    eli = 1;
    for ni=1:elMax
        [r,c] = find(elim==ni); 
        if(ni<elMax)
            [nextr, nextc] = find(elim == (ni+1));
        end
        
      n1=elim(min(r):max(r),min(c):max(c));
        for li = 1 :max(r)-min(r)+1
            for lj =1:max(c)- min(c)+1
                if(n1(li, lj) == ni)
                    n1(li, lj) = 1;
                else
                    n1(li, lj) = 0;
                end
            end
        end
        
        img_r=imresize(n1,[49 28]);
        letter1=FindChar(img_r);
         dist = min(nextc)-max(c);
         mylen =(max(c)-min(c));
         if (((letter1 == '*') || (letter1 == 'ц' && sum(sum(~img_r)) == 0)) && sentence(size(sentence,2)) == 'Ь')
             sentence(size(sentence,2)) = 'ы';
             mylen = 4*mylen;
         elseif(((letter1 == '*') || (letter1 == 'ц' && sum(sum(~img_r)) == 0)) && sentence(size(sentence,2)) ~= 'Ь')
             sentence=[sentence 'i'];
             mylen = 4*mylen;
         else
             sentence=[sentence letter1];
         end
         if(ni<elMax)
         if((dist>mylen*0.8))
            sentence = [sentence ' '];
         end
         end
    end
    sentence = [sentence ' '];
    
    if isempty(B)  
        break
    end
end
sentence

uB = 'https://translation.googleapis.com/language/translate/v2';
response = webwrite(uB, 'q', sentence, 'target', 'en', 'source', 'kk', 'format', 'text', 'key', 'AIzaSyAcS2-AauW3BAPKtgPstH9zrccGhBz0Rvg');
 
disp(response.data.translations.translatedText);
