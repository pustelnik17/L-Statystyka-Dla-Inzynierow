#Hubert Jackowski
waga <-read.csv2("C://Users//solem//Documents//GitHub//L-Statystyka-Dla-Inzynierow//L-Kolokwium Zaliczeniowe//waga1.csv")

p <- mean(waga$Wzrost > 170)
n <- length(waga$Wzrost)

# a
alpha <- 0.06
z <- qnorm(1 - alpha/2)
se <- sqrt((p * (1 - p)) / n)
lower <- p - z * se
lower
upper <- p + z * se
upper

# b
N<-1000
pr<-array(0,dim=N)
n<-length(waga$Wzrost)
x<-length(which(waga$Wzrost>170))
p<-x/n
alpha<-0.06
for (i in 1:N){
  u<-runif(n)
  pr[i]<-length(which(u<p))/n
}
pr<-sort(pr)
wy<-N*alpha/2
lower<-pr[wy+1]
upper<-pr[N-wy]
lower
upper
