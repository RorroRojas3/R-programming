# Name: Rodrigo Ignacio Rojas Garcia
# Assingment: Final Exam - Problem 2

Power.Integrator = function(v1, v2, a, b)
{
    # Check coefficient of equal length
    if (length(v1) != length(v2))
    {
        cat("The length of the coefficient vector must equal the length of the vector of exponents.\n")
        return(NA)
    }
    
    result = 0
    res1 = 0
    res2 = 0
    s1 = 0
    s2= 0
    for (i in seq(1, length(v1), 1))
    {
        A = v1[i]
        P = v2[i]
        if (P == -1)
        {
            s1 = A * log(b)
            s2 = A * log(a)
            res1 = res1 + s1
            res2 = res2 + s2
        }else
        {
            s1 = (A * b^(P + 1)) / (P + 1)
            s2 = (A * a^(P + 1)) / (P + 1)
            res1 = res1 + s1
            res2 = res2 + s2
        }
    }
    
    result = res1 - res2
    return(result)
}