setwd("~/Dropbox/w2fe/new_results/August_16/results")
load("New_N50_ephi0_homo")

Synth_wfe_lag.one_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef <- mean(sapply(New_N50_ephi0_homo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef
Synth_wfe_lag.two_coef
Pscore_wfe_lag.one_coef
Pscore_wfe_lag.two_coef
Maha_wfe_lag.one_coef
Maha_wfe_lag.two_coef
ols_coef


load("New_N100_ephi0_homo")
Synth_wfe_lag.one_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef <- mean(sapply(New_N100_ephi0_homo, function (x) x$ols_coef), na.rm = T)
Synth_wfe_lag.one_coef
Synth_wfe_lag.two_coef
Pscore_wfe_lag.one_coef
Pscore_wfe_lag.two_coef
Maha_wfe_lag.one_coef
Maha_wfe_lag.two_coef
ols_coef


load("New_N200_ephi0_homo")
Synth_wfe_lag.one_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef <- mean(sapply(New_N200_ephi0_homo, function (x) x$ols_coef), na.rm = T)
Synth_wfe_lag.one_coef
Synth_wfe_lag.two_coef
Pscore_wfe_lag.one_coef
Pscore_wfe_lag.two_coef
Maha_wfe_lag.one_coef
Maha_wfe_lag.two_coef
ols_coef


