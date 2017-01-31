%density of states for monovalent atoms with preiodic boundary
%conditions
E = 10;
t = 1;
n = 500;

d = zeros(1, n);
d(2) = 1;
d(n) = 1;

m = kron(toeplitz(d), t) + kron(eye(n), E); 
    

h = histogram(eig(m), 100);
xlabel('Energy');
ylabel('Number of eigen states');
title('With periodic boundary condition');