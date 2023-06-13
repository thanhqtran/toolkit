# Simple Solow model
using Plots 

function solow_model(k0)
    # parameters
    alpha = 0.3 
    A = 10
    d = 0.05
    n = 0.02
    s = 0.3
    # initiation
    k = k0
    y = A*k0^alpha
    # results
    k_arr = Float64[k]
    y_arr = Float64[y]
    i_arr = Float64[1]
    # dynamics
    for i in 2:30
        k = (s*A*(k^alpha) + (1-d)*k)/(1+n)
        y = A*k^alpha 
        push!(k_arr, k)
        push!(y_arr, y)
        push!(i_arr, i)
    end
    return k_arr
end 

kmatrix = solow_model(10)

periods = [i for i in 1:30]
gr()
plot(periods, kmatrix)
savefig("test.png")