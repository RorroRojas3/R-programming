# Name: Rodrigo Ignacio Rojas Garcia
# Project #1

# Function which determines the distance between two points
distance = function(A, B)
{
    result = sqrt((B[1] - A[1])^2 + (B[2] - A[2])^2)
    return(result)
}

# Function which determines the maximum distance between three points
max_distance = function(B, G, W, f)
{
    dist1 = distance(B, G)
    dist2 = distance(G, W)
    dist3 = distance(B, W)
    if ((dist1 > dist2) & (dist1 > dist3))
    {
        return(dist1)
    } else if((dist2 > dist1) & (dist2 > dist3))
    {
        return(dist2)
    }else
    {
        return(dist3)
    }
}

# Function which determines the Best, Good, and Worst point
relable = function(X, Y, Z, f)
{
    if ((f(X) <= f(Y)) & (f(Y) <= f(Z)))
    {
        B = X
        G = Y
        W = Z
        return(c(B, G, W))
    } else if ((f(Y) <= f(X)) & (f(X) <= f(Z)))
    {
        B = Y
        G = X
        W = Z
        return(c(B, G, W))
    } else if ((f(Z) <= f(X)) & (f(X) <= f(Y)))
    {
        B = Z
        G = X
        W = Y
        return(c(B, G, W))
    } else if ((f(Z) <= f(Y)) & (f(Y) <= f(X)))
    {
        B = Z
        G = Y
        W = X
        return(c(B, G, W))
    } else if ((f(X) <= f(Z)) & (f(Z) <= f(Y)))
    {
        B = X
        G = Z
        W = Y
        return(c(B, G, W))
    } else
    {
        B = Y
        G = Z
        W = X
        return(c(B, G, W))
    }
}



# f -> function you are trying to minimize
# P -> one approximation of the minumum
# Q -> second approximation of minimum
# R -> third approximation of minimum
# t -> tolerance for the relative error
NM2 = function(f, P, Q, R, t)
{
    relable_result = relable(P, Q, R, f)
    B = relable_result[1:2]
    G = relable_result[3:4]
    W = relable_result[5:6]
    
    while(max_distance(B, G, W) > t)
    {
        M = (B + G) / 2 # Mid-point calculation
        R = 2*M - W     # Relection Point calculation
        
        # Expansion
        if (f(R) < f(B))
        {
            E = 2*R - M # Expansion point calculation
            if (f(E) < f(R))
            {
                relable_result = relable(B, G, E, f)
                B = relable_result[1:2]
                G = relable_result[3:4]
                W = relable_result[5:6]
            } else
            {
                relable_result = relable(B, G, R, f)
                B = relable_result[1:2]
                G = relable_result[3:4]
                W = relable_result[5:6]
            }
        } else if ((f(B) <= f(R)) & (f(R) < f(G))) # Acceptance
        {
            relable_result = relable(B, G, R, f)
            B = relable_result[1:2]
            G = relable_result[3:4]
            W = relable_result[5:6]
        } else if ((f(G) <= f(R)) & (f(R) < f(W))) # Outside Contraction
        {
            C = (M + R) / 2
            if (f(C) <= f(R))
            {
              relable_result = relable(B, G, C, f)
              B = relable_result[1:2]
              G = relable_result[3:4]
              W = relable_result[5:6]
            } else
            {
                S = (W + B) / 2
                # Accept M and S?
                relable_result = relable(B, M, S, f)
                B = relable_result[1:2]
                G = relable_result[3:4]
                W = relable_result[5:6]
            }
        } else # Inside Contraction
        {
            CC = (W + M) / 2
            if (f(CC) < f(W))
            {
                relable_result = relable(B, G, CC, f)
                B = relable_result[1:2]
                G = relable_result[3:4]
                W = relable_result[5:6]
            }else
            {
                S = (W + B) / 2
                # Accept M and S?
                relable_result = relable(B, M, S, f)
                B = relable_result[1:2]
                G = relable_result[3:4]
                W = relable_result[5:6]
            }
        }
        cat("B:" , B, "|f(B):", f(B), "\r\n")
    }
    return(c(B,f(B)))
}