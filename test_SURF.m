function res = test_LBP(I)
I = imread('index.jpeg');
%I = imread('tesla.jpg');
I = rgb2gray(I);

%Find and extract features.
points = detectSURFFeatures(I);
[features, valid_points] = extractFeatures(I, points);

%Display and plot ten strongest SURF features.
figure; imshow(I); hold on;
plot(valid_points.selectStrongest(10),'showOrientation',true);

