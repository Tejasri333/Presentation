clc;
clear all;
close all;
a = imread('moon.tif');
%a=rgb2gray(a);
%a = im2double(a);
subplot(2,2,1); 
imshow(a); title('Original Image');
%w = [0  1  0 ; 1  -4  1 ; 0  1  0]; %Laplacian filter
%I = imfilter(a,w);
sigma = 0.4; alpha = 0.5; I = locallapfilt(a, sigma, alpha);
subplot(2,2,2); 
imshow(I); title('Laplacian filtered Image');
I1 = a + I;
subplot(2,2,3); 
imshow(I1);title('Sharpened Image (Laplacian+Original)');
%montage({a, I}, 'Size', [1 2]);
%title('Original Image              HPF (Sharpened) Image');