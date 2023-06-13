function res = rate_func(t,y)
    a = 0.2; %the rate of growth 
    dydt = a*y;
    res = dydt;
end