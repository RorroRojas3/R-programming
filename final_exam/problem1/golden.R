# Name: Rodrigo Ignacio Rojas Garcia
# Assignment: Final Exam - Problem 1

golden = function(f, a, b, t)
{
    
    r = (3 - sqrt(5)) / 2
    x_1 = a + r * (b - a)
    x_2 = b - r * (b - a)
    
    while ((abs(b - a) > t) && (((2 * abs(b - a)) / (abs(a) + abs(b))) > t))
    {
         if (f(x_1) < f(x_2))
         {
             b = x_2
             x_2 = x_1
             x_1 = a + r * (b - a)
         }else
         {
             a = x_1
             x_1 = x_2
             x_2 = b - r * (b - a)
         }
    }
    
    return(c((a + b) / 2, f((a + b) / 2)))
}