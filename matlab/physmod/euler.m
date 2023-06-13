function res = euler()
    T(1) = 0; %time sequence
    Y(1) = 5; %initially 5 bil. cells
    dt = 0.1;
    
    for i=1:40
        r = rate_func(T(i), Y(i));
        T(i+1) = T(i) + dt;
        Y(i+1) = Y(i) + r*dt;
    end
    plot(T,Y)
end