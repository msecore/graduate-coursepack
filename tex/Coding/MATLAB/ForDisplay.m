%% Define variables and preallocate.
start = -2;                          %Beginning of range .
finish = 4;                          %End of range
del = 0.5;                           %Interval
A = zeros (( finish-start )/del ,1); %Preallocated column vector , defined by range and interval .
index = 1; %Starting index forvector A.

%% For loop and define vector elements
for n = start : del : finish %Range from start to finish with interval del
    index = index + 1; %Step index
    A(index ,1) = n; %Define element
end

disp (A);