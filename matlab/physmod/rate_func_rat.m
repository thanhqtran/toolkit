function res = rate_func_rat(t, y)
    a = 0.002;
    omega = 2*pi/365; %1 cycle per year
    res = a * y * (1- cos(omega*t) );
end