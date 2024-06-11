# Hubert Jackowski

data <- matrix(c(120,	180,	150, 150,	140,	160), nrow=2, byrow=TRUE)
rownames(data) <- c("Kobiety", "Mężczyźni")
colnames(data) <- c("Mało aktywni", "Średnio aktywni", "Bardzo aktywni")
data <- as.data.frame(data)
data

n <- sum(data)
nK <- sum(c(120,	180,	150))
nM <- sum(c(150,	140,	160))
n1 <- sum(data$`Mało aktywni`)
n2 <- sum(data$`Średnio aktywni`)
n3 <- sum(data$`Bardzo aktywni`)

oczekiwaneFrekwencje <- matrix(c(nK*n1,	nK*n2, nK*n3, nM*n1,	nM*n2,	nM*n3)/n, nrow=2, byrow=TRUE)
rownames(oczekiwaneFrekwencje) <- c("Kobiety", "Mężczyźni")
colnames(oczekiwaneFrekwencje) <- c("Mało aktywni", "Średnio aktywni", "Bardzo aktywni")
oczekiwaneFrekwencje <- as.data.frame(oczekiwaneFrekwencje)
oczekiwaneFrekwencje

# Można prościej, ale pomijamy mechaniczne rozwiązanie:
chisq.test(data)$expected


chi_square_statistic <- chisq.test(data)$statistic
chi_square_statistic
p_value <- chisq.test(data)$p.value
p_value
fisher_test <- fisher.test(data)
fisher_test

