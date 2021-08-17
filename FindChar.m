function letter= FindChar(img)
C=[];
num=1;
global template
for n=1:82
  sem=corr2(template{1,n},img);
  C=[C sem];
end
vd=find(C==max(C));
if vd==1
    letter='а';
elseif vd==2
    letter='ә';
elseif vd==3
    letter='б';
elseif vd==4
    letter='в';
elseif vd==5
    letter='г';
elseif vd==6
    letter='ғ';
elseif vd==7
    letter='д';
elseif vd==8
    letter='е';
elseif vd==9
    letter='ж';
elseif vd==10
    letter='з';
elseif vd==11
    letter='и';
elseif vd==12
    letter='й';
elseif vd==13
    letter='к';
elseif vd==14
    letter='қ';
elseif vd==15
    letter='л';
elseif vd==16
    letter='м';
elseif vd==17
    letter='н';
elseif vd==18
    letter='ң';
elseif vd==19
    letter='о';
elseif vd==20
    letter='ө';
elseif vd==21
    letter='п';
elseif vd==22
    letter='р';
elseif vd==23
    letter='с';
elseif vd==24
    letter='т';
elseif vd==25
    letter='у';
elseif vd==26
    letter='ұ';
elseif vd==27
    letter='ү';
elseif vd==28
    letter='ф';
elseif vd==29
    letter='х';
elseif vd==30
    letter='һ';
elseif vd==31
    letter='ц';
elseif vd==32
    letter='ч';
elseif vd==33
    letter='ш';
elseif vd==34
    letter='щ';
elseif vd==35
    letter='ъ';
elseif vd==36
    letter='ы';
elseif vd==37
    letter='і';
elseif vd==38
    letter='ь';
elseif vd==39
    letter='э';
elseif vd==40
    letter='ю';
elseif vd==41
    letter='я';
    %*-*-*-*-*
elseif vd==42
    letter='А';
elseif vd==43
    letter='Ә';
elseif vd==44
    letter='Б';
elseif vd==45
    letter='В';
elseif vd==46
    letter='Г';
elseif vd==47
    letter='Ғ';
elseif vd==48
    letter='Д';
elseif vd==49
    letter='Е';
elseif vd==50
    letter='Ж';
elseif vd==51
    letter='З';
elseif vd==52
    letter='И';
elseif vd==53
    letter='Й';
elseif vd==54
    letter='К';
elseif vd==55
    letter='Қ';
elseif vd==56
    letter='Л';
elseif vd==57
    letter='М';
elseif vd==58
    letter='Н';
elseif vd==59
    letter='Ң';
elseif vd==60
    letter='О';
elseif vd==61
    letter='Ө';
elseif vd==62
    letter='П';
elseif vd==63
    letter='Р';
elseif vd==64
    letter='С';
elseif vd==65
    letter='Т';
elseif vd==66
    letter='У';
elseif vd==67
    letter='Ұ';
elseif vd==68
    letter='Ү';
elseif vd==69
    letter='Ф';
elseif vd==70
    letter='Х';
elseif vd==71
    letter='Һ';
elseif vd==72
    letter='Ц';
elseif vd==73
    letter='Ч';
elseif vd==74
    letter='Ш';
elseif vd==75
    letter='Щ';
elseif vd==76
    letter='Ъ';
elseif vd==77
    letter='Ы';
elseif vd==78
    letter='І';
elseif vd==79
    letter='Ь';
elseif vd==80
    letter='Э';
elseif vd==81
    letter='Ю';
elseif vd==82
    letter='Я';
else
    letter = '*';
end