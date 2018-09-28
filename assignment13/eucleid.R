# Assignment 13
# Name: Rodrigo Rojas

euclid = function(x1, x2)
{
  row1 = c(x1, 1, 0)
  row2 = c(x2, 0, 1)
  
  while (row2[1] != 0)
  {
    q = row1[1] %/% row2[1]
    row3 = row1 - (q * row2)
    row1 = row2
    row2 = row3
  }
  return(row1)
}