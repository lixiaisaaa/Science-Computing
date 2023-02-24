% a
m = 40;
k = 200;
p = 2*pi*(sqrt(m/k));
w = 2*pi/p

A = [2*k/m -k/m;-k/m 2*k/m];

A = eig(A);

eigenValue_a = sqrt(A)

% b
m = 1;
k = 2;
B = [2*k-m -k -k; -k 2*k-m -k; -k -k 2*k-m]; 
B = eig(B);

eigenValue_b = real(sqrt(B))