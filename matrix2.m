function [A,b] = matrix2(n)
% function to create matrix for 2nd case.
A = zeros(n,n);					%zero matrix is formed
for i = 1 : n					%going through rows from 1 to n
    for j = 1 : n					%going through columns from 1 to n
        A(i,j) = 4/(7*(i+j+1));		%assigning value to elements
    end						%end of for loop 2
end							%end of for loop 1
%b is created, 1 dimensional vector is created and then transposed
b = 9/( 8 * (1:n)');
%using increments of 2 from 2 to the end of the vector, values are changed to 0
b(2:2:end) = 0;					%element value is 0 if i is even
