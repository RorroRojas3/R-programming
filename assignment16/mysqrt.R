# Name: Rodrigo Rojas
# Assignment #16

mysqrt = function(A)
{
  L = A
  W = A / L
  tolerance = 0.000001
  while((abs(L - W)) > tolerance)
  {
    L = (L + W) / 2
    W = A / L
  }
  return((L + W) / 2)
}