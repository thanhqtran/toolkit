% Simple code for GE: CRS-2goods-2firms-1consumer
clearvars;
% shared parameters 
alpha = .3;
beta = 1.1; %consumers like goods 2 better
% different values of A1 
for i = 1:10
    kbar(i) = [ 0.9+i/10 ]; %testing for different kbar
    lbar(i) = [ 1 ];
    relativebar(i) = [ kbar(i)/lbar(i) ];
    A1(i) = [1];
    A2(i) = [1.5];
    relativeA(i) = [ A1(i)/A2(i) ];
    P1(i) = [ A1(i)/(A1(i) + A2(i))];
    P2(i) = [ 1 - P1(i) ];
    relativeP(i) = [ P2(i)/P1(i) ];
    L1(i) = [ lbar(i)*(1/(1+beta)) ];
    L2(i) = [ lbar(i)*(beta/(1+beta)) ];
    K1(i) = [ kbar(i)*(1/(1+beta)) ];
    K2(i) = [ kbar(i)*(beta/(1+beta)) ];
    R(i) = [ (alpha*A1(i)*P1(i))/((kbar(i)/lbar(i))^(1-alpha)) ];
    W(i) = [ ((1-alpha)*A1(i)*P1(i))/((kbar(i)/lbar(i))^(-alpha)) ];
end

plot(kbar, R)
xlabel('Ratio of the Supply of Capital/Labor')
ylabel('Input Price r')