# Name: Rodrigo Ignacio Rojas Garcia
# Assignment: Final Exam - Problem 3

Banach = function(n, v)
{
    left_match = n
    right_match = n
    
    result = 0
    
    for (i in v)
    {
        if (i < 0.5)
        {
            left_match = left_match - 1
        }else 
        {
            right_match = right_match - 1
        }
        if (left_match == 0)
        {
            result = right_match
        }
        if (right_match == 0)
        {
            result = left_match
        }
    }
    
    return(result)
}