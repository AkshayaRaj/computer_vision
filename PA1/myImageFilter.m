function [ output_image ] = myImageFilter( input_image,filter )
%MYIMAGEFILTER Summary of this function goes here
%   Detailed explanation goes here
output_image=conv2(double(input_image),filter,'same');

window=size(filter);

input_image=extend_boundary(input_image,window);

[a,b]=size(input_image);
for i=1:a
    for j=1:b
        input_image(i,j) = 
    end
end

end

