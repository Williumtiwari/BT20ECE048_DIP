
clc
clear ;
close all;
I=imread('Plampi.png');



figure,
subplot(211);
imshow(I);
title('Original Image');
subplot(212);
imhist(I);
title('Normal Histogram');



figure,
j=histeq(I);
subplot(211);
imshow(j);
title('Histogram Equalization using built in function');
subplot(212);
imhist(j);
title('Histogram Equalization using built in function');





I4=imread('Plampi.png');
h=zeros(1,256);
[r , c]=size(I4);
totla_no_of_pixels=r*c;
n=0:255; 

%Calculating Histogram without built-in function
for i=1:r
    for j=1:c
        h(I4(i,j)+1)=h(I4(i,j)+1)+1;
    end
end

%Calculating Probability
for i=1:256
    h(i)=h(i)/totla_no_of_pixels;
end

%Calculating Cumulative Probability
temp=0;
for i=1:256
    temp=temp+h(i);
    h(i)=temp;
end

%Mapping
for i=1:r
    for j=1:c
        I4(i,j)=round(h(I4(i,j)+1)*255);
    end
end


figure,
subplot(211);
imshow(I4);
title('Histogram Equalized image using own code');
subplot(212);
imhist(I4);
title('Histogram Equalization using own code');
