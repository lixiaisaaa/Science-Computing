clear all, close all, clc, clf
A = [1 2 3; 4 5 6; 7 8 9];
u = [1;0;0];

% A = [2 3 2; 1 0 -2; -1 -3 -1];
% % u = [2,3,2];
% u = [1;-1;1];
m1 = 1;
v = A * u;
m2 = max(abs(v));
err = abs(m1-m2);
tolerance = 0.001;
while err > tolerance
    v = A * u;
    m2 = max(abs(v));
    u = v/m2;
    err = abs(m1 - m2);
    m1 = m2;
end
disp("the largest eigenvalue is: ")
disp(m1)
disp("the corresponding eigenvalues are: ")
disp(u)
A = eigs(A)

