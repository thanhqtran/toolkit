%return 1 if all of the elements are positive, which means if there exists a negative, return 0
function res = forall(X)
    for i = 1:length(X)
        if X(i) < 0
            res = 0;
            return 
        else
            res = 1;
        end
    end
end
