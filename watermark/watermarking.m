% Load the original image
originalImage = imread('img1.jpg');
% Convert to grayscale if necessary

% Load the binary watermark image (1 for watermark, 0 for no watermark)
watermark = imread('logo.jpg');
 % Convert to binary image


% Display the original image and the watermark
figure;
subplot(2, 2, 1);
imshow(originalImage);
title('Original Image');

subplot(2, 2, 2);
imshow(watermark);
title('Watermark');

% Embed the watermark into the original image
alpha = 0.1; % Watermark strength (adjust as needed)
watermarkedImage = (1-alpha)*originalImage + alpha .* watermark;

% Display the watermarked image
subplot(2, 2, 3);
imshow(watermarkedImage);
title('Watermarked Image');

% Extract the watermark from the watermarked image
extractedWatermark = (watermarkedImage - originalImage) / alpha;

% Display the extracted watermark
subplot(2, 2, 4);
imshow(extractedWatermark);
title('Extracted Watermark');

% Note: Adjust the file names and paths in the 'imread' function based on the location of your image and watermark files.
