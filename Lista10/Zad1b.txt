# Hubert Jackowski

n1 <- 520
x1 <- 220
n2 <- 480
x2 <- 165

p1 <- x1 / n1
p2 <- x2 / n2
p_hat <- (x1 + x2) / (n1 + n2)

SE <- sqrt(p_hat * (1 - p_hat) * (1/n1 + 1/n2))


Z <- (p1 - p2) / SE
p <- 2 * (1 - pnorm(abs(Z)))
p

# prop.test
ptest <- prop.test(c(x1, x2), c(n1, n2), alternative = "two.sided")
ptest


