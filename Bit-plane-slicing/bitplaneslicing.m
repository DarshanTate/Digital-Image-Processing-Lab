% BitPlane Slicing
% Author: Darshan Tate (BT22ECI011)

image = imread('img.png'); 
if size(image, 3) == 3
    image = rgb2gray(image);
end

% Get the dimensions of the image
[rows, cols] = size(image);

% Preallocate an array to store bit planes
bit_planes = zeros(rows, cols, 8, 'uint8');

% Extract each bit plane
for k = 1:8
    bit_planes(:, :, k) = bitget(image, k) * 2^(k-1);
end

% Define bit-plane labels
bit_labels = ["LSB", "2nd", "3rd", "4th", ...
              "5th", "6th", "7th", "MSB"];

% Display the original image and bit planes

figure;
subplot(3, 3, 1);
imshow(image);
title('Original Image');

for k = 1:8
    subplot(3, 3, k + 1);
    imshow(bit_planes(:, :, k), []);
    title(bit_labels(k)); 
end

sgtitle('Bit-Plane Slicing (LSB to MSB)');
