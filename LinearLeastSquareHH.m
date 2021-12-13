function x = LinearLeastSquareHH(A,b)
a = A(:,1);
[rowf,colf] = size(A);
[row,col] = size(a);
if(a(1,1) > 0)
    alpha = -norm(a,2);
else
    alpha = norm(a,2);
end
I = eye(row);
e1 = I(:,1);
v = a - alpha*e1;
vt = transpose(v);
H1 = I - 2*((v*vt)/(vt*v));
H1A = H1*A;
A1 = H1A(2:end,2:end);
c = H1*b;
R = H1A;
for i=2:colf
    a = A1(:,1);
    [rowin,colin] = size(a);
    if(a(1,1) > 0)
        alpha = -norm(a,2);
    else
        alpha = norm(a,2);
    end
    I = eye(rowin);
    e1 = I(:,1);
    v = a - alpha*e1;
    vt = transpose(v);
    Hkd = I - 2*((v*vt)/(vt*v));
    Ik = eye(i-1);
    HkdA = Hkd*A1;
    [rowk,colk] = size(Hkd);
    zr = zeros(i-1,colk); 
    zc = zeros(rowk,i-1);
    Hk = [Ik,zr;zc,Hkd];
    c = Hk*c;
    R = Hk*R;
    A1 = HkdA(2:end,2:end);
end
R1 = R(1:colf,:);
c1 = c(1:colf,:);
x = R1\c1;

