clear all;
close all;

% include your own directories here
input_dir = "";
output_dir = "";

dir_data = dir(input_dir);
dir_data = dir_data(~ismember({dir_data(:).name}, {'.', '..'}));
file_names = char({dir_data.name});
nr_files = size(file_names, 1);

% windowing data: window-width and window-level (window-center)
ww = 80.0;
wl = 40.0;

for i = 1:nr_files
    [file_path, file_name, file_ext] = fileparts(file_names(i, :));
    in_file_name = input_dir + file_name + file_ext;
    out_file_name = output_dir + file_name + '.png';
    
    % read dicom data
    image = double(dicomread(in_file_name));
    info = dicominfo(in_file_name);

    % get HU conversion variables
    intercept = info.RescaleIntercept;
    slope = info.RescaleSlope;

    % convert pixel to HU values
    image = image * slope + intercept;

    % window and resize
    image = cast(double(double(double(image - wl)/ww) + (0.5)) * 255, 'uint8');
    image = imresize(image, [256, 256]);

    % optional: show the image which was generated
    % imshow(image, [0 255]);
    imwrite(image, out_file_name);
end