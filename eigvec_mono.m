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
[V, D] = eig(m);%D is an diagonal matrix with eigen values of m arranged in increasing order 
                %V is a matrix with columns as eigen vectors corresponding
                %to the eigen values; eg col-1 of corresponds to the first
                %eigen value i.e,D(1,1)

plot([1:1:n], V(:,n/2 + 1).^2);
%V(:,1) - for lowest energy level
%V(:,n/2) - highest occupied energy level
%V(:,n/2 + 1) - lowest unoccupied energy level
