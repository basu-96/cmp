 E = [8, 1; 1, 10];% E1 = 8, E2 = 10
 Y = [0.7, 0.5; 0.5, 0.6];
 n = 500;% number of atoms in the chain

 
   
     m1 = kron(eye(n-1), Y);
     m1 = [m1; zeros(2, 2*(n-1))];
     m1 = horzcat(zeros(2*n, 2), m1);
     m2 = m1';
     m = kron(eye(n), E) + m1 + m2;



h = histogram(eig(m), 100);
xlabel('Energy');
ylabel('Number of eigen states');
title('without periodic boundary condition');