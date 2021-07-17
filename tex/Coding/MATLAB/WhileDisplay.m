%% Define variables and preallocate.
n = -2;                          %Beginning of range.
finish = 4;                      %End of range
del = 0.5;                       %Interval
A = zeros((finish-n)/del,1);     %Preallocated column vector, defined by range and interval.
index = 1;                       %Starting index for vector A.

%% For loop and define vector elements
while index <= length(A(:,1))    %Condition for calculation
   n = n + del;
   A(index,1) = n;               %Define element
   index = index + 1;            %Step index
end

disp(A);                         %Display A in command window.
