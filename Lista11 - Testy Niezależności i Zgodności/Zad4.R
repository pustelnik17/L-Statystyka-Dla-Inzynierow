# Hubert Jackowski

data <- read.csv2("C://Users//golde//OneDrive//Dokumenty//VPProjects//L-Statystyka-Dla-Inzynierow//Lista11//mieszkania.csv")
roomDistrict <- table(data$Dzielnica, data$Pokoje)
roomDistrict

#Pokoje z >= 4 są liczone jako 4
data$PokojeNew <- ifelse(data$Pokoje >= 4, 4, data$Pokoje)
roomDistrictNew <- table(data$Dzielnica, data$PokojeNew)
roomDistrictNew

#Testowanie hipotezy o niezależności liczby pokoi od dzielnicy
chiSqTest <- chisq.test(table(data$Dzielnica, data$PokojeNew))
chiSqTest
