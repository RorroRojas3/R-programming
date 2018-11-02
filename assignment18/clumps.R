# Name: Rodrigo Ignacio Rojas Garcia
# Assignment #18

clumps = function(x)
{
    count = 1
    max = 0
    i = 1
    
    while (i < length(x))
    {
        if ((i + 1) < length(x))
        {
            if (x[i] == x[i + 1])
            {
                count = count + 1
            }else
            {
                count = 1
            }
            if (max < count)
            {
                max = count
            }
        }
        i = i + 1
    }
    
    return(max)
}