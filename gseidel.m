function [x, Eerr, iter] = gseidel(A, b, x, asacry)
%function for gauss-seidel method accepts inputs of A, b and zero vector x
%and assumed accuracy and outputs unknown x, Euclidean error and number of
%iterations.
U = A - tril(A);        %U is upper triangular matrix
L = inv(tril(A));
mi = 100;
Eerr = zeros(1,mi);
for iter = 1 : mi
    x = L * (b - U * x);
    r = A * x - b;
    err = norm(r,2);
    Eerr(iter) = err;
    if (err < asacry)
        Eerr = Eerr(1:iter);
        return;
    end
end