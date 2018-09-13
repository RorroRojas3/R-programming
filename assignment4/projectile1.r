# Assignment 4

rm(list=ls())

g = -9.80655
h_o = as.numeric(readline("Please enter the initial height of the object: "))
v_o = as.numeric(readline("Please enter the initial velocity of the object: "))

a = (g / 2)
b = v_o
c = h_o

t_1 = (-b + sqrt(b^2 - 4 *a * c)) / (2 * a)
t_2 = (-b - sqrt(b^2 - 4 *a * c)) / (2 * a)

if (t_1 > t_2)
{
	t_f = t_1
}else
{
	t_f = t_2
}

t_max = -v_o / g

v_f = g * t_f + v_o

if (v_o < 0)
{
	h_f = h_o
}else
{
	h_f = (g / 2) * t_max^2 + v_o * t_max + h_o
}


cat("The maximum height of the object is", h_f, " meters\n")
cat("The object is in the air ", t_f, " seconds\n")
cat("The velocity of the object when it hits the ground is ", v_f,  " meters/second\n")