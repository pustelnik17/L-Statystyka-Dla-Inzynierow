# Hubert Jackowski

dane <- read.csv2("D://Users//student445-14//Downloads//L-Statystyka-Dla-Inzynierow-main//Lista11//mieszkania.csv")
dzielnice <- unique(dane$Dzielnica)
pokoje <- c()
for (i in dzielnice){
  
  pokoje <- append(pokoje, sum(subset(dane, Dzielnica == i)$Pokoje))
  
}
pokoje
m<-data.frame(pokoje, row.names=dzielnice)
m