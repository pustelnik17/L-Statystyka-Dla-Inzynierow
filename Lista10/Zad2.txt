# Hubert Jackowski

waga <-read.csv2("C:/Users/golde/OneDrive/Dokumenty/VPProjects/L-Statystyka-Dla-Inzynierow/Lista9/waga1.csv")
srK <- subset(waga, plec == 0)$Wzrost

x <- length(srK)
n <- length(waga$Wzrost)
p_hat <- x / n
p0 <- 0.5

z <- (p_hat - p0) / sqrt(p0 * (1 - p0) / n)
p <- 2 * (1 - pnorm(abs(z)))
p

ptest <- prop.test(x, n, p = 0.5, correct = FALSE)
ptest 
