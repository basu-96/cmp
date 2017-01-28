%density of states for monovalent atoms without preiodic boundary
%conditions
E = 10;
t = 1;
n = 200;
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
        %m(1,i) = t;
        %m(i,1) = t;
    end
    a = horzcat(a, eig(m));
    data = [data; a];
    
end
h = histogram(data(:,2), 100);
xlabel('Energy');
ylabel('Number of eigen states');
title('Without periodic boundary condition');