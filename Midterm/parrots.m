clc;
clear all;
close all;

pkg load image;

parrots_Img = imread('parrots.jpg');

whos parrots_Img;

parrots_gray = rgb2gray(parrots_Img);
subplot(1,2,1),imshow(parrots_Img),title('original image');                       % original image.
subplot(1,2,2),imshow(parrots_gray),title('gray image');                          % converted gray image.
