clear all

A = imread('algas.jpg');

subplot(2,2,1)
imshow(A)
 
B = rgb2gray(A);
 
subplot(2,2,2)
imshow(B)

subplot(2,2,3)
imhist(B)

threshold = graythresh(B)*255;  

C = B<threshold;  % Limiar pelo método de Otsu: 161
  
subplot(2,2,4)
imshow(C)

SOMA = sum(C(:)) % Soma do total de pixels brancos na imagem

CELULA = SOMA/705 % Número de células, sendo 705 a média de pixes para uma célula
