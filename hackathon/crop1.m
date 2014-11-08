L=im2bw(rgb2gray(sam2),0.7);
imshow(L);
imageSize=size(L);
[xx,yy] = ndgrid((1:imageSize(1))-300,(1:imageSize(2))-400);
mask = (xx.^2 + yy.^2)<250^2;
mask=mask;%.*(zeros(imageSize(1),imageSize(2))+1);
%imshow(mask);
K=L.*mask;
%imshow(K);