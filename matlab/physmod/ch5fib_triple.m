function res = ch5fib_triple(n)
    F = fibonacci(n);
    for i = 1:(length(F)-3) 
        a = F(i)*F(i+3);
        b = 2*F(i+1)*F(i+2);
        c = (F(i+1))^2 + (F(i+2))^2;
        if a^2 + b^2 == c^2
            disp([i, a, b, c]);
        end 
    end 
end 