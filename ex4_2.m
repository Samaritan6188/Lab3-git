%Xiaoyang Sheng 519021910884%
%by changing the lower beginning or the higher ending once a time to achieve the binary search%
clc,clear;
vector = input('input a sorted array:');
target = input('input a number in the array:');
beginning = 1;
ending = length(vector);

while beginning <= ending      
    middle = fix((beginning + ending)/2); 
   
    if vector(middle) == target
        result = middle;
        disp(result);
        return
    end
    if vector(middle) < target 
         beginning = middle + 1;
    else                      
        ending = middle - 1;
    end
end
