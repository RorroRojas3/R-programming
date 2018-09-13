# Assignment 6
# Name: Rodrigo Ignacio Rojas Garcia
# Class: MATH 3600

# Setup variables
x = seq(1790, 1950, 10)
p = (197273000) / (1 + exp(-0.03134 * (x - 1913.25)))
y = c(3929000, 5308000, 7240000, 9638000, 12866000, 17069000, 23192000,
      31443000, 38558000, 50156000, 62948000, 75995000, 91972000, 105711000,
      122775000, 131669000, 150697000)

# Plot both points and lines
plot(x, y, type="p", col="red", main="United States Population from 1790 until 1950", xlab="Year", ylab="Population")
lines(x, p, col="blue")
legend("topleft", legend=c("Actual", "Logistic Model"), col=c("red", "blue"), pch=c("o", NA), lty=c(NA, 1))

