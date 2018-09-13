# Assignment 7
# Name: Rodrigo Ignacio Rojas Garcia

bern3 = function(p1, p2)
{
  p = runif(1)

    if (p < p1)
  {
    return(0)
  } else if (p < (p1 + p2))
  {
    return(1)
  }
  else
  {
    return(2)
    
  }
  
}