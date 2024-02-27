%% Sobel
clear ; clc; close all;

imagefiles = dir(fullfile('images/', '*.png'));
nfiles = length(imagefiles);

for i=1:nfiles
    
    xlsfiles(:,1) = {imagefiles.name};
    currentfile = fullfile('images/',  xlsfiles{i});
    I_original = imread(currentfile);
    I = im2gray(I_original);
    I = im2double(I);
    
    fprintf("Image % with size: %d * %d\n",i ,length(I(1,:)), length(I(:,1)));

    fig1 = figure;
    imagesc(I), colormap gray, axis image, axis off;
    imgTitle = sprintf("figs/img0%d_grayScale.png",i);
    saveas(fig1,imgTitle);
    RemoveWhiteSpace([], 'file', imgTitle);

    tic;
    
    BWs1 = edge(I,'sobel');
           
    time = toc;

    fig2 = figure;
    imagesc(BWs1), colormap gray, axis image, axis off;
    imgTitle = sprintf("figs/img0%d_Sobel.png",i);
    saveas(fig2, imgTitle);
    RemoveWhiteSpace([], 'file', imgTitle);

    fprintf("Img0%d Sobel done in %.3f\n",i, time)
end

%%

