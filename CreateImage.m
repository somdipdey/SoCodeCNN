clc;
fileID = fopen('MyProgram.ll','r');
readContent = fread(fileID);
m = size(readContent);
[w, h] = leastDiffFactor(m(1));
content = transpose(readContent);
imageMatrix = reshape(content, [h, w]);
image = mat2gray(imageMatrix);
RGB = repmat(image, [1, 1, 3]);
imshow(RGB);
imwrite(RGB,'MyProgram.png');


function [num1, num2] = leastDiffFactor(k)
    factors = factor2(k);
    prevDiff = 100000000;
    for i = 1:length(factors)
        tempNum1 = factors(i);
        tempNum2 = int32(k/tempNum1);
        diff = abs(tempNum1 - tempNum2);
        if(diff <= prevDiff)
            prevDiff = diff;
            num1 = tempNum1;
            num2 = tempNum2;
        end
    end
    %midFactor = factors(int32(floor(length(factors)/2)));
    %num1 = midFactor;
    %num2 = int32(k/num1);
end

function a = factor2(k)

    if ~isinteger(k)|| k < 1
        error('Valid only for positive integers.');
    end
    a = 1:floor(k/2);
    tmp = k./a;
    tmp = isinteger(tmp);
    a = [a(tmp),k];

    function a = isinteger(k)
    a = k == floor(k);
    end
end
