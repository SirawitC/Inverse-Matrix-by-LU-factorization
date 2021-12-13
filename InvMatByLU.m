function v = InvMatByLU(A,n)
[L,U,P] = lu(A);
I = eye(n);
Inv = [];
for i=1:n
    bh = P*I(:,i);
    w = L\bh;
    x = U\w;
    Inv = [Inv,x];
end
v = Inv;
