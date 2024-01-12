close all
clear
clc

tic
im = imread('2.bmp');
dehazed = LIEGIC(im);
figure, imshow([im, dehazed]);
toc

%{
filePath = '';
imList = dir(strcat(filePath, '*.bmp'));
imNum = length(imList);
tic
for i=1:imNum
    i
    imName = imList(i).name;
    im = imread(strcat(filePath, imName));
    dehazed = LIEGIC(im);
end
toc
%}