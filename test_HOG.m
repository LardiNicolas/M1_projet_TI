function res = test_HOG(I)
img = imread('index.jpeg');
img = rgb2gray(img);
[featureVector,hogVisualization] = extractHOGFeatures(img);
figure;
imshow(img); 
hold on;
plot(hogVisualization);