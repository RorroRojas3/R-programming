# Name: Rodrigo Ignacio Rojas Garcia
# Assignment 23

k.Subsets = function(k, n)
{
    c = seq(1, k)
    j = 1
    M.row <- 1
    M <- matrix(0,nrow = choose(n,k), ncol = k)
    
    while (j != 0)
    {
        M[M.row,] = c
        M.row = M.row + 1
        
        j = k
        while((j > 0) && c[j] == (n - k + j))
        {
            j = j - 1
        }
        
        if (j == 0)
        {
            break
        }
        
        c[j] = c[j] + 1
        
        if ((j + 1) <= k)
        {
            for (i in seq(j + 1, k, 1))
            {
                if ((i - 1) > 0)
                {
                    c[i] = c[i - 1] + 1
                }
            }
        }
    }
    
    return(M)
}