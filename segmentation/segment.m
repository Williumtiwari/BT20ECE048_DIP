% Load the image
originalImage = imread('t1.jpg');

% Convert the image to double for numerical operations
originalImage = double(originalImage);

% Reshape the image into a 2D matrix (rows x columns, channels)
[m, n, ~] = size(originalImage);
imageData = reshape(originalImage, m * n, 3);

% Number of clusters (adjust as needed)
numClusters = 3;

% Perform k-means clustering
[idx, centroids] = kmeans(imageData, numClusters);

% Reshape the index matrix back to the original image size
segmentedImage = reshape(idx, m, n);

% Display the original and segmented images
figure;
subplot(1, 2, 1);
imshow(uint8(originalImage));
title('Original Image');

subplot(1, 2, 2);
imagesc(segmentedImage);
colormap('jet');
title('Segmented Image');