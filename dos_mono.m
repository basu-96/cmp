%density of states for monovalent atoms without preiodic boundary
%conditions
E = 10;
t = 1;
n = 500;



    m = zeros(n);

    for j = 1:1:n
        m(j, j) = E;
        if j < n
           
            m(j+1, j) = t;
            m(j, j+1) = t;

        end
        %m(1,i) = t;
        %m(i,1) = t;
    end

    

h = histogram(eig(m), 100);
xlabel('Energy');
ylabel('Number of eigen states');
title('Without periodic boundary condition');