set.seed(2018)
# Example 1
x10 <- runif(10) < 1/2
cat("Example 1","\n")
cat(x10,"\n")
m10 <- clumps(x10)
cat(m10,"\n")
# Example 2
x20 <- runif(20) < 1/2
cat("Example 2","\n")
cat(x20,"\n")
m20 <- clumps(x20)
cat(m20,"\n")
# Example 3
x30 <- runif(30) < 1/2
cat("Example 3","\n")
cat(x30,"\n")
m30 <- clumps(x30)
cat(m30,"\n")
# Example 4
x1000A <- runif(1000) < 1/2
cat("Example 4","\n")
m1000A <- clumps(x1000A)
cat(m1000A,"\n")
# Example 5
x1000B <- runif(1000) < 1/2
cat("Example 5","\n")
m1000B <- clumps(x1000B)
cat(m1000B,"\n")
