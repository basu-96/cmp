 E = [10, 1; 1, 8];% E1 = 8, E2 = 10
 Y = [0.7, 0.5; 0.5, 0.6];
 n = 500;% number of atoms in the chain

 d = zeros(1, n);
 d(2) = 1;
 d(n) = 1;

 m = kron(toeplitz(d), Y) + kron(eye(n), E); 




h = histogram(eig(m), 100);
xlabel('Energy');
ylabel('Number of eigen states');
title('with periodic boundary condition');