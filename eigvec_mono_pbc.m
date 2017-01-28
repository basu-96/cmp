%monovalent atom chain eigenstates plot
E = 10;
t = 1;
n = 50;%number of atoms in the chain
    m = zeros(n);

    for j = 1:1:n
        m(j, j) = E;
        if j < n
           
            m(j+1, j) = t;
            m(j, j+1) = t;
            
        end
    end
     m(1, n) = t;
     m(n, 1) = t;
[V, D] = eig(m);%
plot([1:1:n], V(:,1).^2);
%V(:,1) - for lowest energy level
%V(:,n/2) - highest occupied energy level
%V(:,n/2 + 1) - lowest unoccupied energy level