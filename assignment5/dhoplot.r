# Assignment 5
# Name: Rodrigo Ignacio Rojas Garcia

dhoplot = function(t)
{
  x = seq(0, t, t / 512)
  y = x^(2) * exp(-x / 2) * sin(4 * x)
  plot(x, y, type="l")
}

