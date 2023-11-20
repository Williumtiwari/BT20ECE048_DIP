clc;
clear all;
close all;
I=imread('img.jpg');

R=I;
G=I;
B=I;
Ig=double(I);
R(:,:,2:3)=0;
G(:,:,[1 3])=0;
B(:,:,1:2)=0;
Grey=uint8((Ig(:,:,1)+Ig(:,:,2)+Ig(:,:,3))/3);
subplot(4,4,1), imshow(R);
subplot(4,4,2), imshow(B);
subplot(4,4,3),imshow(G);
subplot(4,4,4),imshow(Grey);
temp=Grey';
temp=temp(:)';
M=median(temp);

[r,c] = size (Grey);
bw = zeros(r,c);
for i=1:r
    for j=1:c
        if Grey(i,j)>=M
            bw(i,j)=1;
        end
    end
end
subplot(2,3,1), imshow(R);
subplot(2,3,2), imshow(B);
subplot(2,3,3),imshow(G);
subplot(2,3,4),imshow(Grey);
subplot(2,3,5),imshow(bw);






