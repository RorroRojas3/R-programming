# Name: Rodrigo Ignacio Rojas Garcia
# Assignment #14

f = function(x)
{
  result = cos(x) - 0.80 + 0.10*x^2
  #result = - sin(x) + (x / 50)
  #result = (x- 3)^5
  return(result)
}

bisection = function(A, B, t)
{
  if ((f(A) > 0) & (f(B) > 0))
  {
    cat("Error, f(A) and f(B) must have different signs.\n")
    return(NA)
  }
  if ((f(A) < 0 ) & (f(B) < 0))
  {
    cat("Error, f(A) and f(B) must have different signs.\n")
    return(NA)
  }
  
  while((abs(B - A) > t) &  (((2 * (abs(B - A))) / (abs(A) + (abs(B)))) > t))
  {
    M = (A + B) / 2.0
    if ( ((f(A) > 0) & (f(M) > 0)) | ((f(A) < 0) & (f(M) < 0)))
    {
      A = M
    }else
    {
      B = M
    }
    
  }
  return(M)
}