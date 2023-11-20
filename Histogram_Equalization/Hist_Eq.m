clc;
clear all;
close all;
%orginal = imread('img.jpg');
I=imread('img.jpg');

R=I;
G=I;
B=I;
Ig=double(I);
R(:,:,2:3)=0;
G(:,:,[1 3])=0;
B(:,:,1:2)=0;
orginal=uint8((Ig(:,:,1)+Ig(:,:,2)+Ig(:,:,3))/3);
[rows,columns,~] = size(orginal);
finalResult = uint8(zeros(rows,columns));
pixelNumber = rows*columns;
frequncy = zeros(256,1);
pdf = zeros(256,1);
cdf = zeros(256,1);
cummlative = zeros(256,1);
outpic = zeros(256,1);
%
for i = 1:1:rows
    for j = 1:1:columns
        val = orginal(i,j);
        frequncy(val+1) = frequncy(val+1)+1;
        pdf(val+1) = frequncy(val+1)/pixelNumber;
    end
end
sum =0 ;
%we want the 256 - 1 that's why we initailzed the intensityLevel with 255
%instead of 256
intensityLevel = 255;

for i = 1:1:size(pdf)
    sum =sum +frequncy(i);
    cummlative(i) = sum;
    cdf(i) = cummlative(i)/ pixelNumber;
    outpic(i) = round(cdf(i) * intensityLevel);
end


for i = 1:1:rows
    for j = 1:1:columns
        finalResult(i,j) = outpic(orginal(i,j) + 1);
    end
end
subplot(1,3,1),imshow(orginal),title('Original Image');
subplot(1,3,2),imshow(finalResult),title('Manual Histogram Equlization');
subplot(1,3,3),imshow(histeq(orginal)),title('using histeq');
