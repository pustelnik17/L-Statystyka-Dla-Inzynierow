#Hubert Jackowski
waga <-read.csv2("C://Users//solem//Documents//GitHub//L-Statystyka-Dla-Inzynierow//L-Kolokwium Zaliczeniowe//waga1.csv")
wagaM <- subset(waga, plec==0)$Waga_po
wagaK <- subset(waga, plec==1)$Waga_po

# a
srM <- mean(wagaM)
srK <- mean(wagaK)
sdM <- sd(wagaM)
sdK <- sd(wagaK)
nM <- length(wagaM)
nK <- length(wagaK)

se <- sqrt((sdM^2 / nM) + (sdK^2 / nK))
z <- (srM - srK) / se
p <- 2 * (1 - pnorm(abs(z)))
p

# b
t.test(wagaM, wagaK)

