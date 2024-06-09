# Hubert Jackowski

data <- read.csv2("C://Users//golde//OneDrive//Dokumenty//VPProjects//L-Statystyka-Dla-Inzynierow//Lista11//mieszkania.csv")
data$CenaZaM2 <- data$Cena / data$Metraz
shapiro.test(data$CenaZaM2)
plot(density(data$CenaZaM2), main="CenaZaM2")
shapiro.test(subset(data$CenaZaM2, data$Dzielnica == "Srodmiescie"))
plot(density(subset(data$CenaZaM2, data$Dzielnica == "Srodmiescie")), main="CenaZaM2 (Srodmiescie)")
