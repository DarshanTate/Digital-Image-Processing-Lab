# Histogram Equalization

This MATLAB script performs histogram equalization on a given image.

## Overview

- Reads an image file named `img.png`.
- Converts the image to grayscale.
- Computes the histogram and cumulative distribution function (CDF) of the grayscale image.
- Applies histogram equalization to the grayscale image.
- Displays the original image, grayscale image, equalized image, and their respective histograms and CDFs.

## Instructions

1. Place `img.png` in the same directory as the script.
2. Run the script in MATLAB.

## Details

- `clc`, `clear all`, `close all`: Clears the command window, workspace, and closes all figures.
- `imread`: Reads the image into `image`.
- `rgb2gray`: Converts the image to grayscale.
- `figure`, `subplot`, `imshow`, `bar`, `plot`: Creates figures with subplots, displays images, and plots histograms and CDFs.
- Computes the histogram and CDF of the grayscale image.
- Applies histogram equalization to enhance the image contrast.

## Output

![](https://github.com/user-attachments/assets/96e8a74e-8724-4a6d-beaf-93181f9d7dfd)


## Author

Darshan Tate (BT22ECI011)
