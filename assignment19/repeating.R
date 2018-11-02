# Assignment 18
# Name: Rodrigo Ignacio Rojas Garcia

repeating = function(x)
{
     empty = rep(0, length(x))
     for(i in x)
     {
         empty[i] = empty[i] + 1
         if (empty[i] == 2)
         {
             repeated_num = i
             break
         }
     }
    return(repeated_num)
}