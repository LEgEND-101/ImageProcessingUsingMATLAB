close all;
clear all;
clc;
[filename,pathname,filterindex]=uigetfile('*.jpg');
totalpath=strcat(pathname,filename);
im=double(imread(totalpath)); 
imshow(CannyEdgeDetector(im));
