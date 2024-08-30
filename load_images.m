% Load all images in a subdirectory into a 3D array

% Specify the directory containing the images
imageDir = 'frames';

% Specify dimensions of each image
W = 1280;
H = 1024;

% Get a list of all image files in the directory
imageFiles = dir(fullfile(imageDir, '*.png'));
nFrames=length(imageFiles);
% Initialize an array to hold the images
images = zeros(H, W, nFrames, 'uint8');

% Loop through each frame and load the image
for k = 1:numel(imageFiles)
    % Construct the full image file path
    imagePath = fullfile(imageDir, imageFiles(k).name);
    
    % Read the image
    img = imread(imagePath);
    
    % Store the image in the array
    %images(:,:,k) = img;
    images(:,:,k) = img(:,:,1); %just taking R channel as it is grayscale

end

%% Use the code below if you would rather convert all frames into an uncompressed .avi 
%% movie to be displayed with PsychToolBox

% vidDir='video_dyballa';
% v = VideoWriter(fullfile(['FullVid.avi']),'Grayscale AVI');
% v.FrameRate=60;
% open(v)
% for ii=1:nFrames
%      % Construct the full image file path
%     imagePath = fullfile(imageDir, imageFiles(ii).name);
    
%     % Read the image
%     img = imread(imagePath);
    
%     writeVideo(v,img(:,:,1)); %just taking R channel as its greyscale
% end
% close(v)