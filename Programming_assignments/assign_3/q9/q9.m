A =[
-6 -3 6  1;
-1  2 1 -6;
 3  6 3 -2;
 6 -3 6 -1;
 2 -1 2  3;
-3  6 3  2;
-2 -1 2 -3;
 1  2 1  6];
[m,n] = size(A);

U = zeros(m,n);
for i=1:n
    U(:,i) = A(:,i)/ norm(A(:,i));
end

%% Part a

N = U' * U;
M = U  * U';

%% Part b

y = rand(8,1) * 5;
p = U * U' * y ;
z = y - p;

dot(z,p) % Yes z and p are orthogonal


%% Part c
