function res = submerge(d)
    global r;
    rho = 0.3;
    mass = (4/3)*(pi*r^3*rho);
    vol = (pi/3)*(3*r*d^2 - d^3);
    res = mass - vol;
end