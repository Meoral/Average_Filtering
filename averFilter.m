clc,clear,close all;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=1/10*[1,1,1;                 %均值滤波器
    1,2,1;
    1,1,1];
h2=1/273*[1,4,7,4,1;            %高斯滤波器
    4,16,26,16,4;
    7,26,47,26,7;
    4,16,26,16,4;
    1,4,7,4,1;];
noisePic = imnoise(originalPic,'gaussian');%加高斯噪声
subplot(2,2,1),imshow(originalPic),title('\fontsize{16}原始图片');
subplot(2,2,2),imshow(noisePic),title('\fontsize{16}噪声图片');
resultPic1=myFilter(h1,noisePic);
subplot(2,2,3),imshow(resultPic1),title('\fontsize{16}均值滤波图片');
resultPic2=myFilter(h2,noisePic);
subplot(2,2,4),imshow(resultPic2),title('\fontsize{16}高斯滤波图片');
set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');