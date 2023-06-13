function res = mydiff(X)
    Y = [X(1)];
    for i = 1:(length(X)-1)
        Y(i+1) = X(i+1) - X(i);
    end
    res = Y;
end

