# Hubert Jackowski

mean_women <- 166
var_women <- 100
n_women <- 520

mean_men <- 174
var_men <- 121
n_men <- 480

SE <- sqrt(var_women / n_women + var_men / n_men)

Z <- (mean_women - mean_men) / SE
p <- 2 * (1 - pnorm(abs(Z)))
p

