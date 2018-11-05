# Assignment# 20
# Name: Rodrigo Ignacio Rojas Garcia

eratosthenes = function(x)
{
    arr = seq(1, x, 1)
    arr2 = seq(1, x, 1)
    arr3 = 0
    i = arr[2]
    j = 0
    while(i^2 <= x)
    {
        if (arr2[i] != -1)
        {
            j = i + i
            while (j <= x)
            {
                arr2[j] = -1
                j = j + i
            }
        }
        i = i + 1
    }
    
    j = 1
    i = 2
    while(i <= x)
    {
        if (arr2[i] != -1)
        {
            arr3[j] = arr2[i]
            j = j + 1
        }
        i = i + 1
    }
    return(arr3)
}