clear all

% img_rgb = imread('1.png');   
% img_hsv = rgb2hsv(img_rgb);
% 
% img_s=img_hsv(:,:,2);
% img_g=double(img_rgb(:,:,2))/255;
% 
% I = (img_s)/0.2;

rawimg = imread('TestImg_CHT_a2.bmp');
imshow(rawimg)
[centers, radii, metric] = imfindcircles(rawimg(:,:,1),[15 30]);
viscircles(centers, radii,'EdgeColor','b');