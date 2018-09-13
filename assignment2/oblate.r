#Assignment 2

#Clear Variables
rm(list=ls())

r_e = as.numeric(readline("Please enter the equatorial radius in km: "))
r_p = as.numeric(readline("Please enter the polar radius in km: "))

volume = (4 / 3) * pi * r_e^2 * r_p
gamma = acos( r_p / r_e )
area = (2 * pi) * (r_e^2 + (r_p^2 / sin(gamma)) * log(cos(gamma) / (1 - sin(gamma))))

cat("The surface area of the oblate spheroid is ", area, " km^2\n")
cat("The volume of the oblate spheroid is ", volume," km^3\n")
