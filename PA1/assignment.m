

house1=imread('House1.jpg');
house2=imread('House2.jpg');

h=fspecial('gaussian',[3 3],0.5);
s = [1 2 1;
    0 0 0;
    -1 -2 -1];

out_img = myImageFilter(house1,h);
imshow(uint8(out_img));

figure,mesh(h);

m = 5; n = 5;
sigma = 1;
[h1, h2] = meshgrid(-(m-1)/2:(m-1)/2, -(n-1)/2:(n-1)/2);
hg = exp(- (h1.^2+h2.^2) / (2*sigma^2));
sum = sum(hg(:));
h = hg ./ sum