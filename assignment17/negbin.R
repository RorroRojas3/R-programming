# Name: Rodrigo Rojas
# Assignment #17

negbin = function(p, R)
{
  if (p <= 0 | p >= 1)
  {
    cat("Error, p must be in the interval (0, 1)\n")
    return(NA)
  }
  if (R < 0 | (R %% 1 != 0))
  {
    cat("Error, R must be a natural number\n")
    return(NA)
  }
  Trials = 0
  S = 0
  while (S < R)
  {
    x  = runif(1)
    if (x < p)
    {
      Trials = Trials + 1
      S = S + 1
    }else
    {
      Trials = Trials + 1
    }
  }
  return(Trials)
}