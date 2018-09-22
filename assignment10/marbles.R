marbles = function(red, blue, draws)
{
  total = red + blue
  if (total < draws)
  {
    cat("Error, number of draws must be less than or euqal to the total numbers of marbles.\n")
    return(NA)
  }else
  {
    count = 0
    for (i in 1:draws)
    {
      red_prob = red / (red + blue)
      x = runif(1)
      if (red_prob > x)
      {
        red = red - 1
        count = count + 1
      }else
      {
        blue = blue - 1
      }
    }
    return(count)
  }
}