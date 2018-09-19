# Assignment 9
# Name: Rodrigo Ignacio Rojas Garcia

annuity <- function(p, r, d, t)
{
  n = t * 12
  x = seq(1, n, 1)
  a = rep(0, n)
  a[1] = p * (1 + (r / 12)) + d
  for (i in 2:n)
  {
    a[i] = a[i - 1] * (1 + (r / 12)) + d
  }
  plot(x, a, type="l", col="blue", main="Annuity Plot", 
       xlab="Months", ylab="Amount")
  return(a[i])
}