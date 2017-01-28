%matlab code for finding eigen value single electron chain with PBC
E = 10;
t = 1;
n = 100;
data = [];

for i = 2:1:n
    m = zeros(i);
    a = i;
    for j = 1:1:i
        m(j, j) = E;
        if j < i
           
            m(j+1, j) = t;
            m(j, j+1) = t;
            a = [a; i];
        end
        m(1,i) = t;
        m(i,1) = t;
    end
    a = horzcat(a, eig(m));
    data = [data; a];
    
end


plot(data(:,1), data(:,2), '.');
axis([0 inf 5 15]);
title('Energy eigen values distribution with periodic boundary condition');
xlabel('Dimension');
ylabel('Energy eigen value');