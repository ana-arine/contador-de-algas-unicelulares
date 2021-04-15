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

C = B<threshold;  % Limiar pelo m�todo de Otsu: 161
  
subplot(2,2,4)
imshow(C)

SOMA = sum(C(:)) % Soma do total de pixels brancos na imagem

CELULA = SOMA/705 % N�mero de c�lulas, sendo 705 a m�dia de pixes para uma c�lula
