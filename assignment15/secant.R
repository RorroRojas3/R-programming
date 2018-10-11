# Name: Rodrigo Ignacio Rojas Garcia
# Assigment #15

secant = function(A, B, t)
{
  
  while((abs(B - A) > t) &  (((2 * (abs(B - A))) / (abs(A) + (abs(B)))) > t))
  {
    C = A - f(A) * ((B - A) / (f(B) - f(A)))
    A = B
    B = C
  }
  
  return(C)
  
}