# Name: Rodrigo Ignacio Rojas Garcia
# Final Project 

k.Subsets = function(k, n)
{
    c = -1
    
    for (i in seq(1,k,1))
    {
        c[i] = i
    }
    
    j = 1
    
    while (j != 0)
    {
        j = k
        while(c[j] == (n - k + j))
        {
            j = j - 1
        }
        
        c[j] = c[j] + 1
        
        if ((j + 1) < k)
        {
            for (i in seq(j + 1, k))
            {
                c[i] = c[i - 1] + 1
            }
        }
    }
}