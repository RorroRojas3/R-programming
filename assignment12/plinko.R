# Assignment #12
# Name: Rodrigo Ignacio Rojas Garcia

plinko = function(p, n)
{
  move = 0
  for (i in 2:(n + 1))
  {
    random_num = runif(1)
    if (random_num < p)
    {
      move[i] = move[i - 1] - 1
    }else
    {
      move[i] = move[i - 1] + 1
    }
  }
  
  x = seq(0, n, 1)
  
  plot(x, move, type= "l", xlab = "seq(0,N)", ylab = "Y", col = "black")
  
  return(move)
}