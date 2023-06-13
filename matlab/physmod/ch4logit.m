clearvars;
%simple deterministic case
n = 10;
r = 2.5;
X(1) = 0.5;
for i = 1:n
    X(i+1) = r*X(i)*(1-X(i));
end
plot(X)

%iterate different values for r

%{
 n = 10;
r = 1;
X(1) = 0.5;
for i = 1:10
    r = r+0.25;
    for i = 1:n 
        X(i+1) = r*X(i)*(1-X(i));
    end 
    plot(X)
    X(1) = 0.5;
    hold on
end
 
%}
