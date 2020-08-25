function [contrastimg] = Mygamma(img,a)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
sz=size(img);
img=(double(img)).^a;
minred=min(min(img(:,:,1)));
maxred=max(max(img(:,:,1)));
mingreen=min(min(img(:,:,2)));
maxgreen=max(max(img(:,:,2)));
minblue=min(min(img(:,:,3)));
maxblue=max(max(img(:,:,3)));
scfr=255/(maxred-minred);
scfg=255/(maxgreen-mingreen);
scfb=255/(maxblue-minblue);
contrastimg=zeros(sz);
tot=size(sz);
x=sz(1);y=sz(2);
if tot(2)==2
    z=1;
else
    z=3;
end
for k=1:1:z
    for i=1:1:x
        for j=1:1:y
            if k==1
            contrastimg(i,j,k)=scfr*(img(i,j,k)-minred);
            end
            if k==2
            contrastimg(i,j,k)=scfg*(img(i,j,k)-mingreen);
            end
            if k==3
            contrastimg(i,j,k)=scfb*(img(i,j,k)-minblue);
            end
        end
    end
end
contrastimg=uint8(contrastimg);
end

