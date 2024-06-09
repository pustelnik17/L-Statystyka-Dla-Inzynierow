# Hubert Jackowski

data <- read.csv2("C://Users//golde//OneDrive//Dokumenty//VPProjects//L-Statystyka-Dla-Inzynierow//Lista11//mieszkania.csv")
data$isGreater <- ifelse((data$Cena / data$Metraz) >= 6000, 1, 0)
cenaDistrict <- table(data$Dzielnica, data$isGreater)
cenaDistrict


#Testowanie hipotezy o niezależności liczby pokoi od dzielnicy
chiSqTest <- chisq.test(cenaDistrict)
chiSqTest
