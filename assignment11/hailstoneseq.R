# Name: Rodrigo Rojas
# Assigment #11

hailstone = function(n)
{
  if (n <= 0 | ((n %% 1) != 0))
  {
    cat("Error, N must be a natural number.\n")
    return(NA)
  }
  
  result = 0
  i = 1
  x = 1
  while (n != 1)
  {
    result[i] = n
    x[i] = i
    i = i + 1
    if ((n %% 2) == 0)
    {
      n = n / 2
      result[i] = n
    }else
    {
      n = (n * 3) + 1
    }
  }
  result[i] = n
  y = result
  x[i] = i
  
  # Plots different kind of plots based on if there was only one iteration or not
  if (length(x) > 1)
  {
    plot(x, y, type = "l", main = "Hailstone Sequence", xlab = "Iteration Number", ylab = "Value of F", col = "blue")
  }else
  {
    plot(x, y, type = "o", main = "Hailstone Sequence", xlab = "Iteration Number", ylab = "Value of F", col = "red")
  }
  
  
  return(result)
}