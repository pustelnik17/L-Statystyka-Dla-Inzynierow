# Hubert Jackowski

x <- 385
n <- 1000
p0 <- 0.40 

phat <- x / n

sd <- sqrt(p0 * (1 - p0) / n)

z <- (phat - p0) / sd

p <- 2 * (1 - pnorm(abs(z)))
p


ptest <- prop.test(x = 385, n = 1000, p = 0.40, alternative = "two.sided")
ptest

