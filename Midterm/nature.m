clc;
clf;
clear all;
close all;

pkg load image;

nature_Img = imread('nature.jpg');

whos nature_Img;

%grayscale
grayscale_nature = rgb2gray(nature_Img);
whos grayscale_nature;

%original image to red
nature_red = nature_Img;
nature_red(:,:,2)=0;
nature_red(:,:,3)=0;

%original image to green
nature_green = nature_Img;
nature_green(:,:,1)=0;
nature_green(:,:,3)=0;

%original image to blue
nature_blue = nature_Img;
nature_blue(:,:,1)=0;
nature_blue(:,:,2)=0;

%jpg to png
imwrite(nature_Img,'nature.png');
imwrite(nature_red, 'nature_red.png');
imwrite(nature_green, 'nature_green.png');
imwrite(nature_blue,'nature_blue.png');

%place the image
subplot(2,2,1),imshow(nature_Img),title('Original image');                      % original image.
subplot(2,2,2),imshow(nature_red),title('Red  image');                          % red image.
subplot(2,2,3),imshow(nature_green),title('Green image');                       % green image.
subplot(2,2,4),imshow(nature_blue),title('Blue image');                         % blue image.
