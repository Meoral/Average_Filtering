clc,clear,close all;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=1/10*[1,1,1;                 %��ֵ�˲���
    1,2,1;
    1,1,1];
h2=1/273*[1,4,7,4,1;            %��˹�˲���
    4,16,26,16,4;
    7,26,47,26,7;
    4,16,26,16,4;
    1,4,7,4,1;];
noisePic = imnoise(originalPic,'gaussian');%�Ӹ�˹����
subplot(2,2,1),imshow(originalPic),title('\fontsize{16}ԭʼͼƬ');
subplot(2,2,2),imshow(noisePic),title('\fontsize{16}����ͼƬ');
resultPic1=myFilter(h1,noisePic);
subplot(2,2,3),imshow(resultPic1),title('\fontsize{16}��ֵ�˲�ͼƬ');
resultPic2=myFilter(h2,noisePic);
subplot(2,2,4),imshow(resultPic2),title('\fontsize{16}��˹�˲�ͼƬ');
set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');