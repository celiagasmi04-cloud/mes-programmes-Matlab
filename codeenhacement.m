%The code for image enhacement

clc;clear all;close all;
 % Read the input image
img = imread('exepleam.jpg');   
 % Convert RGB image to grayscale
gray = rgb2gray(img);     
% Enhance image contrast by stretching intensity values
enhanced = imadjust(gray);      
% Improve image sharpness (edge enhancement)
sharpened = imsharpen(enhanced);          
% Display original and enhanced images side by side
imshowpair(gray, sharpened, 'montage')   
 % Add title to the figure
title('Original vs Améliorée');             