function res = rats()
    ini_y = 1000; %initial population 
    ini_t = 0; %initial time 
    ter_t = 365*3; %terminate time (3 years)
    %ode45 method 
    [T, Y] = ode45(@rate_func_rat, [ini_t, ter_t], ini_y);
    %euler method
    T2(1) = ini_t;
    Y2(1) = ini_y;
    dt = 0.1;
    for i = 1:ter_t
        r = rate_func_rat(T2(i), Y2(i));
        T2(i+1) = T2(i) + dt;
        Y2(i+1) = Y2(i) + r*dt;
    end
    plot(T,Y, T2, Y2)
    xlabel('Days')
    ylabel('Population')
    legend('ode45','euler')
end