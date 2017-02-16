function ps1(n)
switch n
    case 1
        I = [1:5; 6:10; 11:15; 16:20];
        f = ones(3,3)*(1/9);
        mycorrelate(I,f)
    case 2
        myGaussian([1, 7], 1)
        sum(ans)
        myGaussian([1, 7], .1)
        sum(ans)
    case 3
        myGaussian_normalized([1, 7], .1)
        sum(ans)
        I = imread('dog1.jpg');
        Ig = rgb2gray(I);
        f = myGaussian_normalized([1, 31], 5);
        Is = mycorrelate(double(Ig), f);
        figure;
        imshow(uint8(Is));
    case 4
        myGaussian_normalized([5,5], .5)
        f1 = myGaussian_normalized([1, 31], 5);
        f2 = myGaussian_normalized([25,25], 5);
        I = imread('dog1.jpg');
        Ig = rgb2gray(I);
        Is = mycorrelate(double(Ig), f2);
        figure;
        imshow(uint8(Is));
        figure;
        imshow(checkerboard(20));
        figure;
        imagesc(mycorrelate(double(checkerboard(20)), f1));
        colormap gray
        figure;
        imagesc(mycorrelate(double(checkerboard(20)), f2));
        colormap gray
end