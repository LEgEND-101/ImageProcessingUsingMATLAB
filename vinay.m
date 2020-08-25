close all;
clear all;
clc;
[filename,pathname,filterindex]=uigetfile('*.jpg');
totalpath=strcat(pathname,filename);
imdata=imread(totalpath);
red=uint8(zeros(size(imdata)));
green=uint8(zeros(size(imdata)));
blue=uint8(zeros(size(imdata)));
red(:,:,1)=imdata(:,:,1);
green(:,:,2)=imdata(:,:,2);
blue(:,:,3)=imdata(:,:,3);
figure(1);subplot(2,2,1);
imshow(imdata);
subplot(2,2,2);
imshow(red);
subplot(2,2,3);
imshow(green);
subplot(2,2,4);
imshow(blue);
figure(2);subplot(1,2,1);imshow(colortogray(imdata));
subplot(1,2,2);imshow(binimg(colortogray(imdata)));
figure(3); subplot(1,3,1); imshow(imdata);
subplot(1,3,2); imshow(contrastimg(imdata));
subplot(1,3,3); imshow(Mygamma(imdata,0.5));


