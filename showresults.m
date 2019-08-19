clc 
clear all
close all

K=5

for k=1:K
 I(:,:,k)=imread('D:\Philipp\2-CodeProjects\3-python\deep-unet-for-satellite-image-segmentation2\result.tif',k);
 T(:,:,k)=imread('D:\Philipp\2-CodeProjects\3-python\deep-unet-for-satellite-image-segmentation2\data\mband\test.tif',k);
end
for k=1:8
   % red, red edge, coastal, blue, green, yellow, near-IR1 and near-IR2

 T(:,:,k)=imread('D:\Philipp\2-CodeProjects\3-python\deep-unet-for-satellite-image-segmentation2\data\mband\test.tif',k);
end

C = combnk([1:8],3);


for i =1: size(C,1)
    for j=1:3
    
   c= circshift(C(i,:),j)
figure
subplot(1,2,1)
imagesc(I(:,:,1:3))
axis image

subplot(1,2,2)
imshow(uint8(T(:,:,c)))
hold on
title(num2str(c))
drawnow
waitforbuttonpress
    end
end