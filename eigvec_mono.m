%monovalent atom chain eigenstates plot
E = 10;
t = 1;
n = 50;%number of atoms in the chain
d = zeros(1, n);%this vector will be used by toeplitz
d(2) = 1;
m1 = toeplitz(d);
m2 = eye(n);
m = kron(m1, t) + kron(m2, E);


[V, D] = eig(m);%D is an diagonal matrix with eigen values of m arranged in increasing order 
                %V is a matrix with columns as eigen vectors corresponding
                %to the eigen values; eg col-1 of corresponds to the first
                %eigen value i.e,D(1,1)

plot(V(:,25).^2);
%V(:,1) - for lowest energy level
%V(:,n/2) - highest occupied energy level
%V(:,n/2 + 1) - lowest unoccupied energy level
