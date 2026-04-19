%The code for image restauration

clc;clear all;close all;
% Read the input image
img = imread('teaser.jpg');   
% Convert RGB image to grayscale
gray = rgb2gray(img);   
% Add Gaussian noise to simulate image degradation
noisy = imnoise(gray, 'gaussian', 0, 0.01); 
% Apply median filter to remove noise and restore image quality
restored = medfilt2(noisy);          
% Display noisy image and restored image side by side
imshowpair(noisy, restored, 'montage') 
% Add title to the figure   
title('Image bruitée vs restaurée');     