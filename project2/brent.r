# Name: Rodrigo Ignacio Rojas Garcia
# Project 2

brent = function(f, a, b, t)
{
    if ( (f(a) * f(b)) >= 0 )
    {
        cat("f(a) and f(b)must have opposite signs\n")
        return(NA)
    }
    
    if ( abs(f(a)) < abs(f(b)) )
    {
        temp = a
        a = b
        b = temp
    }

    c = a
    m_flag = 1
    
    while((abs(b - a) > t) &&  (((2 * (abs(b - a))) / (abs(b) + (abs(a)))) > t))
    {
        greek = 2 * .Machine$double.eps * abs(f(b)) + (t / 2)
        if ((f(a) != f(c)) && (f(b) != f(c)))
        {
          s = (a * f(b) * f(c)) / ((f(a) - f(b)) * (f(a) - f(c)))
          s = s + ((b * f(a) * f(c)) / ((f(b) - f(a)) * (f(b) - f(c))))
          s = s + ((c * f(a) * f(b)) / ((f(c) - f(a)) * (f(c) - f(b))))
          cat("Inverse Quadratic Interpolation\n")
        }else
        {
          s = b - f(b) * ((b - a) / (f(b) - f(a)))
          cat("Secant Method\n")
        }
      
        if ( ( (s > ((3*a + b) / 4)) && (s > b) ) | 
             ( (s < ((3*a + b) / 4)) && (s < b) ) | 
             ( (m_flag == 1) && (abs(s - b) >= (abs(b - c) / 2)) ) |
             ( (m_flag == 0) && (abs(s - b) >= (abs(c - d) / 2)) ) |
             ( (m_flag == 1) && (abs(b - c) < abs(greek))) | 
             ( (m_flag == 0) && (abs(c - d) < abs(greek)))
            )
        {
          s = (a + b) / 2
          m_flag = 1
          cat("Bisection Method\n")
        }else
        {
          m_flag = 0
        }
        
        d = c
        c = b
        
        if ((f(a) * f(s)) < 0)
        {
          b = s
        }else
        {
          a = s
        }
        
        if (abs(f(a)) < abs(f(b)))
        {
          temp = a
          a = b
          b = temp
        }
    }
    
  return(b)
}
