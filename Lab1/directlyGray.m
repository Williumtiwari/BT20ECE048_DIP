% Read the color image
colorImage = imread('Plampi.png'); % Replace with your image file path

% Convert the color image to grayscale
grayImage = rgb2gray(colorImage);

% Display the original and grayscale images
subplot(2, 2, 1);
imshow(colorImage);
title('Original Color Image');

subplot(1, 2, 2);
imshow(grayImage);
title('Grayscale Image');
