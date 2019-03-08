%matrix A, coeffients of x variables in system of linear equations
A = [17, 2, 11, -3;
    4, -12, 2, -3;
    2, -2, 8, -1;
    5, -2, 1, -9];
%solution vector b
b = [12;
    7;
    0;
    12];
%zero vector x0
x0 = zeros(4,1);
%assumed accuracy
asacry = 1e-10;

%using gauss-seidel method
[x, E, iter] = gseidel(A, b, x0, asacry);
%print number of iterations from gauss-seidel method
display(['Gauss-Seidel iterations = ', num2str(iter)]);

%plot on semilogarithmic graph
semilogy(1:iter,E);
title('Gauss-Seidel Method');
xlabel('Number of iterations');
ylabel('Euclidean Error');

%using jacobi method
[x, E, iter] = jacobi(A, b, x0, asacry);
%print number of iterations from jacobi method
display(['Jacobi iterations = ', num2str(iter)]);

%plot on semilogarithmic graph
semilogy(1:iter,E);
title('Jacobi Method');
xlabel('Number of iterations');
ylabel('Euclidean Error');

%solving equations from previous task using gauss-seidel
x0 = zeros(10,1);

%part A
[A,b] = matrix1(10);
[x, E, iter] = gseidel(A, b, x0, asacry);
display(x);
display(iter);

%part B
[A,b] = matrix2(10);
[x, E, iter] = gseidel(A, b, x0, asacry);
display(x);
display(iter);


