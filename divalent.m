
 E = [8, 1; 1, 10];% E1 = 8, E2 = 10
 Y = [0.7, 0.5; 0.5, 0.6];
 n = 100;% # OF ATOMS
 data = [];
 for i = 2:1:n
     a = [];
     for j =1:1:2*i
         a = [a; i];
     end
     m1 = kron(eye(i-1), Y);
     m1 = [m1; zeros(2, 2*(i-1))];
     m1 = horzcat(zeros(2*i, 2), m1);
     m2 = m1';
     m = kron(eye(i), E) + m1 + m2;
     a = horzcat(a, eig(m));
     data = [data; a];
 end

plot(data(:,1), data(:,2), '.');
title('Energy eigen values distribution without periodic boundary condition');
xlabel('Dimension(# of atoms)');
ylabel('Energy eigen value');