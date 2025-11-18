function metodo_newton(f,df,x0,e)
    x = x0
    k = 0
    while abs(f(x))> e
        x = x - f(x)/df(x)
        k = k+1
    end
    return x,k
end

#Exemplo de uso da função 
f(x) = exp(-x)-1
df(x) = -exp(-x)
x0 = 0.001
e = 1e-5
s,iter = metodo_newton(f,df,x0,e)