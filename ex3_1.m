%Xiaoyang Sheng 519021910884%
%randomly generate an integer between 1 and 4 to determine the direction of the movement and by showing the coordinates to 
%show the trajectory of Charlie.
clc,clear;
n = input('input an integer:');
X = 0;
Y = 0;
trajectory = [];
trajectory(1,1) = X;
trajectory(1,2) = Y;
step_count = 0;
while X~= -n && X~=n && Y~=-n && Y~=n
direction = floor(rand(1)*4+1);  %randomly generate an integer between 1 and 4 to determine the direction of the movement%
   switch direction
    case 1
        Y = Y - 1;
    case 2
        X = X - 1;
    case 3
        Y = Y + 1;
    case 4
        X = X + 1;
end
step_count = step_count + 1;  %count the times%
trajectory(step_count+1,1) = X; %put every position of the trajectory into a vector% 
trajectory(step_count+1,2) = Y;
end
   fprintf('the count of step is %d\n',step_count);
   fprintf('the trajectory of Charlie is shown as below (the every position Charlie passes)\n ');
   disp (trajectory);