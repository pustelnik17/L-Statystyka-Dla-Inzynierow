# Hubert Jackowski

waga <-read.csv2("C:/Users/golde/OneDrive/Dokumenty/VPProjects/L-Statystyka-Dla-Inzynierow/Lista9/waga1.csv")
srK <- subset(waga, plec == 0)$Waga_po
srM <- subset(waga, plec == 1)$Waga_po

n1 <- length(srK)
n2 <- length(srM)

mean1 <- mean(srK)
mean2 <- mean(srM)
sd1 <- sd(srK)
sd2 <- sd(srM)

z <- (mean1 - mean2) / sqrt((sd1^2 / n1) + (sd2^2 / n2))
p <- 2 * (1 - pnorm(abs(z)))
p

set.seed(1)
weights_men <- rnorm(n1, mean = mean1, sd = sd1)
weights_women <- rnorm(n1, mean = mean2, sd = sd2)

ttest <- t.test(weights_men, weights_women, var.equal = FALSE)
ttest 
