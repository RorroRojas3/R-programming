# Assignment 3

p = as.numeric(readline("Please enter the principal: "))
r = as.numeric(readline("Please enter the interest rate: "))
n = as.numeric(readline("Please enter the number of compounding periods per year: "))
t = as.numeric(readline("Please enter the number of years: "))

a = p * (1 + (r / n))^(n * t)

cat("The total amount accumulated is: ", a, "\n")