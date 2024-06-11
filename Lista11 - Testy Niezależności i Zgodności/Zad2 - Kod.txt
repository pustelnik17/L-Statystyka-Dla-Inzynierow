# liczba wierszy i kolumn
r<-2
k<-2
# macierz frekwencji
m<-matrix(c(200,150,300,350),nrow=r)
# liczba obserwacji w wierszach oraz kolumnach
sumr<-array(0,dim=r)
sumk<-array(0,dim=k)
# liczba obserwacji
n<-sum(m)
sumr<-rowSums(m)
sumk<-colSums(m)
# macierz oczekiwanych freq oraz realizacja statystyki testowej
# na początku me jest macierzą o odpowiednich wymiarach, który #zawiera same zera
me<-matrix(0,nrow=r,ncol=k)
t<-0
for (i in 1:r){
  for (j in 1:k){
    me[i,j]<-sumr[i]*sumk[j]/n
    t<-t+(m[i,j]-me[i,j])^2/me[i,j]
  }
}
# podać realizację statystyki testowej
t
#podać wartość p
df<-(r-1)*(k-1)
(p<-1-pchisq(t,df))
#podać oczekiwane frekwencje
me