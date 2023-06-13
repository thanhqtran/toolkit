%initial values 
r = 1/4;
F(:,1) = 1;
n = 20;
for i = 1:n 
    F(:,i+1) = F(:,i) + F(:,i) * r^(i-1);
end
plot(F)