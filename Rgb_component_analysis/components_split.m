% Extracting colours from the image
% Owner : Darshan Tate
clc 
clear all
close all

I = imread("img.png");

% Create figure with subplots
figure('Name', 'RGB Components');

% Original image
subplot(2,2,1);
imshow(I);
title('Original Image');

% Showing only red component
Ir = I;
Ir(:,:,2) = 0;
Ir(:,:,3) = 0;
subplot(2,2,2);
imshow(Ir);
title('Red Component');

% Showing only green component
Ig = I;
Ig(:,:,1) = 0;
Ig(:,:,3) = 0;
subplot(2,2,3);
imshow(Ig);
title('Green Component');

% Showing only blue component
Ib = I;
Ib(:,:,1) = 0;
Ib(:,:,2) = 0;
subplot(2,2,4);
imshow(Ib);
title('Blue Component');