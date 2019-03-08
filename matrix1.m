function [A,b] = matrix1(n)
% function to create matrix for 1st case.
A = zeros(n,n);					%zero matrix is formed
for i = 1 : n					%going through rows from 1 to n
    for j = 1 : n					%going through columns from 1 to n
        if i == j				%first case on the diagonal i = j
            A(i,j) = 7;			%aij = 7
        elseif ((i == j - 1) || ( i == j + 1)) %second case
            A(i,j) = -3;			%aij = -3
        end					%end of if-else statement
    end						%end of for loop 2
end							%end of for loop 1
%b is created, 1 dimensional vector is created and then transposed
b = -4 + 0.4 * (1:n)';
