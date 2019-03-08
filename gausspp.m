function [ b ] = gausspp(A,b)
% fuction to solve a system of linear equations using gaussian elimination
% using partial pivoting.
n = length(b);      % n is assigned the length of b
for i = 1:(n-1)     %from 1 to n - 1 (length of b - 1)
    [d, maxi] = max (abs(A(i:n , i)));  %the maximum value and index of the
    % absolute values of aij at j = i and i from i to n assigned to
    % [d,maxi]
    maxi = maxi + i - 1;        %maxi shortened to one value
    if (d < 1e-15)              %if denominator is less than 1e-15
        b = NaN;                %b is not a number
        return;
    end
    A([i;maxi],:) = A([maxi;i],:);
    b([i;maxi]) = b([maxi;i]);
    for j = (i+1):n
        d = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - d * A(i,:);
        b(j) = b(j) - d * b(i);
    end
end

for i = n : -1 : 2              %using increments of -1 from n to 2
    b(i) = b(i) / A(i,i);
    j = 1 : (i-1);
    b(j) = b(j) - A(j,i) * b(i);
end
b(1) = b(1)/A(1,1);