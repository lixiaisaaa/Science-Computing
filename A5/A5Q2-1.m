A = [0.3 0.3 0.3 0.1;1-0.1 0 0 0;0 1-0.2 0 0;0 0 1-0.5 1-0.9];
A1 = [0.3 0.3 0.3 0.1;1-0.1 0 0 0;0 1-0.2 0 0;0 0 1-0.5 1-0.01];
e = eig(A);
largest_eigenvalue = max(e)
e = eig(A1);
largest_eigenvalue_changed = max(e)



