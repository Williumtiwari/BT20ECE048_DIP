
colorImage = imread('Plampi.png'); 

redPixels = colorImage;
greenPixels=colorImage;
bluePixels=colorImage;

grayImage = 0.59* colorImage(:,:,1) + 0.3 * colorImage(:,:,2) + 0.11* colorImage(:,:,3);
% grayImage = 0.59* colorImage(:,:,2:3)=0 + 0.3 * colorImage(:,:,[1,3]) + 0.11* colorImage(:,:,);
grayImage = uint8(grayImage);


redPixels(:, :, 2:3)=0; % Set green and blue channels to zero
greenPixels(:, :, [1, 3]) = 0; % Set red and blue channels to zero
bluePixels(:, :, 1:2) = 0; %set' red and green to zero


%plotting graphs
subplot(4, 4, 1);
imshow(colorImage);
title('Original Color ');

subplot(4, 4, 2);

imshow(redPixels);
title('redImage ');


subplot(4, 4, 3);
imshow(greenPixels);
title('green Image ');

subplot(4, 4, 4);
imshow(bluePixels);
title('Blue  Color ');

subplot(4, 4, 5);
imshow(grayImage);
title('gray image ');

