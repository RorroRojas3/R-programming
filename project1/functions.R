f1 = function(X)
{
    z = X[1]^2 - 4*X[1] + X[2]^2 - X[2] - X[1]*X[2]
    return(z)
}

f2 = function(X)
{
    z = X[1]^3 + X[2]^3 - 3*X[1] - 3*X[2] + 5
    return(z)
}

f3 = function(X)
{
    z = (X[1] - X[2]) / (2 + X[1]^2 + X[2]^2)
    return(z)
}