function res = price(p)
    global A1, alpha, p, r, w
    A = A1;
    alpha = alpha;
    r = r;
    w = w;
    res = (alpha*A*p./r)^(1/(1-alpha)) * ((1-alpha)*A*p./w)^(1/alpha) - 1
end