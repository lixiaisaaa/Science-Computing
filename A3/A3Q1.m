tfSet = zeros(1,3);
i = 1;
n = [10, 100, 1000];
for j = n 
 
 x = gaussElimination(j);
 tfSet(i) = x;
 i = i + 1;
 
end

plot(n, tfSet)

function x = gaussElimination(n)
 ratio = 0;
 sum = 0;
 for k = 1 : n - 1
 for i = k + 1 : n
 ratio = ratio + 1;
 for j = k + 1 : n
 ratio = ratio + 1;
 end
 ratio = ratio + 1;
 end
 end
 sum = sum + 1;
 for i = n - 1 : 1
 for j = [i + 1, n]
 sum = sum + 1;
 end
 sum = sum + 1;
 end
 x = ratio + sum;
end