#Hubert Jackowski
waga <-read.csv2("C://Users//solem//Documents//GitHub//L-Statystyka-Dla-Inzynierow//L-Kolokwium Zaliczeniowe//waga1.csv")

# mu0 = hyp
hyp <- 3

sr <- waga$Waga_po - waga$Waga_przed

# Test Z
t <- (sqrt(length(sr)))*(mean(sr) - hyp)/(sd(sr))
p <- 2 * (1 - pnorm(abs(t)))
p

# Test Studenta
t <- (sqrt(length(sr)))*(mean(sr) - hyp)/(sd(sr))
p <- 2 * (1 - pt(abs(t), df=length(sr) - 1))
p

# Test t.test
t.test(sr, mu=hyp)
# lub inaczej tak:
t.test(waga$Waga_po, waga$Waga_przed, mu=hyp, paired = TRUE)
