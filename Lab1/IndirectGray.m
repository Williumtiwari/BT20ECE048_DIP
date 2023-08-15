% Read the color image
colorImage = imread('Plampi.png'); % Replace with your image file path

% Calculate grayscale image using weighted average method
grayImage = 0.2989 * colorImage(:,:,1) + 0.5870 * colorImage(:,:,2) + 0.1140 * colorImage(:,:,3);

% Convert grayscale image to uint8 data type (0-255 range)
grayImage = uint8(grayImage);

% Display the original and grayscale images
subplot(1, 2, 1);
imshow(colorImage);
title('Original Color Image');

subplot(1, 2, 2);
imshow(grayImage);
title('Grayscale Image');
