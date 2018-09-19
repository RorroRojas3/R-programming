# Assignment 8
# Name: Rodrigo Ignacio Rojas Garcia

binom_sim = function(n, p)
{
  if ((n > 0) & ((n %% 1) == 0))
  {
      if ((p > 0) & (p < 1))
      {
        success = 0
        for (i in 1:n)
        {
          x = runif(1)
          if (x < p)
          {
            success = success + 1
          }
        }
        return(success)
        
      }else
      {
        cat("Error, p must be a strictly between 0 and 1.\n")
        return(NA)
      }
  } else
  {
    cat("Error, n must be a positive integer.\n")
    return(NA)
  }
}