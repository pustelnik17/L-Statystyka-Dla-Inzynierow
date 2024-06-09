# Hubert Jackowski

obserwajceCzęstości <- c(20, 30, 150, 250, 250)
oczekiwanePrawdop <- dbinom(0:4, size=4, prob=0.5)
chiSqTest <- chisq.test(obserwajceCzęstości, p=oczekiwanePrawdop)
chiSqTest
