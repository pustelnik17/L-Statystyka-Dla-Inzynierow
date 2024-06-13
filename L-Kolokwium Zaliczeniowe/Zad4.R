#Hubert Jackowski
waga <-read.csv2("C://Users//solem//Documents//GitHub//L-Statystyka-Dla-Inzynierow//L-Kolokwium Zaliczeniowe//waga1.csv")
  
# mu0 = hyp
hyp <- 172

sr <- subset(waga, plec==0)$Wzrost

# a
t <- (sqrt(length(sr)))*(mean(sr) - hyp)/(sd(sr))
p <- 2 * (1 - pnorm(abs(t)))
p

# b
t <- (sqrt(length(sr)))*(mean(sr) - hyp)/(sd(sr))
p <- 2 * (1 - pt(abs(t), df=length(sr) - 1))
p

# c
t.test(sr, mu=hyp)

