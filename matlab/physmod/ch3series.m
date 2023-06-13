A1 = 1;
total = 0;
r = 1/2;
S(:,1) = total; %initiate the first column of S
for i = 1:10
    a = A1 * r^(i-1);
    total = total + a;
    S(:,i+1) = total; %keep adding columns based on index 
end
plot(S)