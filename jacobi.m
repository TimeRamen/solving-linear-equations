function [x, Eerr, iter] = jacobi(A, b, x, asacry)
%function for jacobi method accepts inputs of A, b and zero vector x and
%assumed accuracy and outputs unknown x, Euclidean error and number of
%iterations.
D = A .* eye(length(b));
%dot product of A with identity vector creates diagonal matrix of A
R = A - D;              %rest of the matrix
D = inv(D);
mi = 100;          %maximum number of iterations
Eerr = zeros(1,mi);
for iter = 1 : mi
    x = D * (b - R * x);
    r = A * x - b;
    err = norm(r, 2);
    Eerr(iter) = err;
    if (err < asacry)
        Eerr = Eerr(1:iter);
        return;
    end
end