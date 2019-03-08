k = 6;
n = 10 * 2.^(0:k-1);

%part a
err = zeros(1,k);
failed = k;
for i = 1 : k
    [A, b] = matrix1(n(i));
    x = gausspp(A, b);
    if isnan(x)
        display(['Failed for n = ', num2str(n(i))]);
        failed = i - 1;
        break;
    end
    r = A * x - b;
    err(i) = norm(r,2);
end


%plot the graph
semilogy(n(1:failed),err(1:failed));
title('Error for 2.a)');
xlabel('n');
ylabel('Euclidean Error');


%part b
err = zeros(1,k);
failed = k;
for i = 1 : k
    [A, b] = matrix2(n(i));
    x = gausspp(A, b);
    if isnan(x)
        display(['Failed for n = ', num2str(n(i))]);
        failed = i - 1;
        break;
    end
    r = A * x - b;
    err(i) = norm(r,2);
end

%plot the graph
semilogy(n(1:failed),err(1:failed));
title('Error for 2.b)');
xlabel('n');
ylabel('Euclidean Error');



%part a for n = 10

[A, b] = matrix1(10);
x = gausspp(A,b);
r = A * x - b;
display(x);
display(['Euclidean error = ', num2str(norm(r,2))]);

%residual correction for n = 10

x = x - gausspp(A,r);
r = A * x - b;
display(x);
display(['Euclidean error = ', num2str(norm(r,2))]);


%part b for n = 10

[A, b] = matrix2(10);
x = gausspp(A,b);
r = A * x - b;
display(x);
display(['Euclidean error = ', num2str(norm(r,2))]);

%residual correction for n = 10

x = x - gausspp(A,r);
r = A * x - b;
display(x);
display(['Euclidean error = ', num2str(norm(r,2))]);

