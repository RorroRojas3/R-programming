f = function(x)
{
  #result = x^2 - exp(x)
  #result = sin(x) - (2 * cos(2 * x))
  
  if (x < -4)
  {
    return(-2*x - 6)
  }else if (x <= 0)
  {
    return(x + 6)
  }else
  {
    return(6- x^3)
  }
  
  return(result)
}
