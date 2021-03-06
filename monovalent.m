%matlab code for finding eigen value single electron chain without PBC
E = 10;
t = 1;
n = 100;
data = [];

for i = 2:1:n
    d = zeros(1,i);
    d(2) = 1;
    a = [];
    for j = 1:1:i
        a = [a;i];
    end
    m1 = toeplitz(d);
    m2 = eye(i);
    m = kron(m1, t) + kron(m2, E);
    a = horzcat(a, eig(m));
    data = [data; a];
    
end


plot(data(:,1), data(:,2), '.');
axis([0 inf 5 15]);
title('Energy eigen values distribution with periodic boundary condition');
xlabel('Dimension');
ylabel('Energy eigen value');