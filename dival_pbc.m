%%matlab code for finding eigen value divalent chain PBC
 E = [8, 1; 1, 10];% E1 = 8, E2 = 10
 Y = [0.7, 0.5; 0.5, 0.6];%off diagonal block
 n = 100;% # OF ATOMS
 data = [];
 for i = 2:1:n
     a = [];
     for j =1:1:2*i
         a = [a; i];
     end
     d = zeros(1, i);
     d(2) = 1;
     d(i) = 1;
     m = kron(toeplitz(d), Y) + kron(eye(i), E);
     a = horzcat(a, eig(m));
     data = [data; a];
 end

plot(data(:,1), data(:,2), '.');
title('Energy eigen values distribution without periodic boundary condition');
xlabel('Dimension(# of atoms)');
ylabel('Energy eigen value');