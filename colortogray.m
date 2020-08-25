function [greyimg] = colortogray(img)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
img=double(img);
sz=size(img);
tot=size(sz);
x=sz(1);
y=sz(2);
greyimg=zeros(x,y);
if tot(2)==2
    z=1;
else
    z=sz(3);
    for i=1:1:x
        for j=1:1:y
           greyimg(i,j)=(img(i,j,1)+img(i,j,2)+img(i,j,3))/3;
        end
    end
end
greyimg=uint8(greyimg);
end

