function [binimg] = binimg(img)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
sz=size(img);
binimg=zeros(sz);
medi=median(median(img));
for i=1:1:sz(1)
    for j=1:1:sz(2)
        if img(i,j)>medi
            binimg(i,j)=255;
        else
            binimg(i,j)=0;
        end
    end
end
binimg=uint8(binimg);
end

