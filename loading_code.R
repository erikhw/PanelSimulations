library(ggplot2)
setwd("~/Dropbox/w2fe/Simulations/results")
load("New_N50_ephi0.5_T20_hetereo")

Synth_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
CBPS_wfe_lag.one_coef_50
CBPS_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50

mean(sapply(New_N100_ephi0.5_T20_hetereo, function(x) x$prop))


load("New_N100_ephi0.5_T20_hetereo")
Synth_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
CBPS_wfe_lag.one_coef_100
CBPS_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100



load("New_N200_ephi0.5_T20_hetereo")
Synth_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_200
Synth_wfe_lag.two_coef_200
Pscore_wfe_lag.one_coef_200
Pscore_wfe_lag.two_coef_200
CBPS_wfe_lag.one_coef_200
CBPS_wfe_lag.two_coef_200
Maha_wfe_lag.one_coef_200
Maha_wfe_lag.two_coef_200
ols_coef_200


########## RMSE ##############
Synth_wfe_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.one_coef)), na.rm = T)

Synth_wfe_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.two_coef)), na.rm = T)

Maha_wfe_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.one_coef)), na.rm = T)

Maha_wfe_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.two_coef)), na.rm = T)

Pscore_wfe_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.one_coef)), na.rm = T)

Pscore_wfe_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.two_coef)), na.rm = T)

CBPS_wfe_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.one_coef)), na.rm = T)

CBPS_wfe_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.two_coef)), na.rm = T)

ols_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) abs(1- x$ols_coef)), na.rm = T)

Synth_wfe_lag.one_RMSE_50
Synth_wfe_lag.two_RMSE_50
Pscore_wfe_lag.one_RMSE_50
Pscore_wfe_lag.two_RMSE_50
CBPS_wfe_lag.one_RMSE_50
CBPS_wfe_lag.two_RMSE_50
Maha_wfe_lag.one_RMSE_50
Maha_wfe_lag.two_RMSE_50
ols_RMSE_50

## N = 100
Synth_wfe_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.one_coef)), na.rm = T)

Synth_wfe_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.two_coef)), na.rm = T)

Maha_wfe_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.one_coef)), na.rm = T)

Maha_wfe_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.two_coef)), na.rm = T)

Pscore_wfe_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.one_coef)), na.rm = T)

Pscore_wfe_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.two_coef)), na.rm = T)

CBPS_wfe_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.one_coef)), na.rm = T)

CBPS_wfe_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.two_coef)), na.rm = T)

ols_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) abs(1- x$ols_coef)), na.rm = T)

Synth_wfe_lag.one_RMSE_100
Synth_wfe_lag.two_RMSE_100
Pscore_wfe_lag.one_RMSE_100
Pscore_wfe_lag.two_RMSE_100
CBPS_wfe_lag.one_RMSE_100
CBPS_wfe_lag.two_RMSE_100
Maha_wfe_lag.one_RMSE_100
Maha_wfe_lag.two_RMSE_100
ols_RMSE_100

## N = 200
Synth_wfe_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.one_coef)), na.rm = T)

Synth_wfe_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Synth_wfe_lag.two_coef)), na.rm = T)

Maha_wfe_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.one_coef)), na.rm = T)

Maha_wfe_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Maha_wfe_lag.two_coef)), na.rm = T)

Pscore_wfe_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.one_coef)), na.rm = T)

Pscore_wfe_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$Pscore_wfe_lag.two_coef)), na.rm = T)

CBPS_wfe_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.one_coef)), na.rm = T)

CBPS_wfe_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$CBPS_wfe_lag.two_coef)), na.rm = T)

ols_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) abs(1- x$ols_coef)), na.rm = T)

Synth_wfe_lag.one_RMSE_200
Synth_wfe_lag.two_RMSE_200
Pscore_wfe_lag.one_RMSE_200
Pscore_wfe_lag.two_RMSE_200
CBPS_wfe_lag.one_RMSE_200
CBPS_wfe_lag.two_RMSE_200
Maha_wfe_lag.one_RMSE_200
Maha_wfe_lag.two_RMSE_200
ols_RMSE_200

###### SD #######
load("New_N50_ephi0.5_T20_hetereo")

Synth_wfe_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_sd_50
Synth_wfe_lag.two_sd_50
Pscore_wfe_lag.one_sd_50
Pscore_wfe_lag.two_sd_50
CBPS_wfe_lag.one_sd_50
CBPS_wfe_lag.two_sd_50
Maha_wfe_lag.one_sd_50
Maha_wfe_lag.two_sd_50
ols_sd_50


load("New_N100_ephi0.5_T20_hetereo")
Synth_wfe_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_sd_100
Synth_wfe_lag.two_sd_100
Pscore_wfe_lag.one_sd_100
Pscore_wfe_lag.two_sd_100
CBPS_wfe_lag.one_sd_100
CBPS_wfe_lag.two_sd_100
Maha_wfe_lag.one_sd_100
Maha_wfe_lag.two_sd_100
ols_sd_100


load("New_N200_ephi0.5_T20_hetereo")
Synth_wfe_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_sd_200
Synth_wfe_lag.two_sd_200
Pscore_wfe_lag.one_sd_200
Pscore_wfe_lag.two_sd_200
CBPS_wfe_lag.one_sd_200
CBPS_wfe_lag.two_sd_200
Maha_wfe_lag.one_sd_200
Maha_wfe_lag.two_sd_200
ols_sd_200

#################### COVERAGE #########################
Synth_wfe_lag.one_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coverage), na.rm = T)

Pscore_wfe_lag.one_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coverage), na.rm = T)

CBPS_wfe_lag.one_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coverage), na.rm = T)

Maha_wfe_lag.one_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coverage), na.rm = T)

Synth_wfe_lag.two_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coverage), na.rm = T)

Pscore_wfe_lag.two_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coverage), na.rm = T)

CBPS_wfe_lag.two_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coverage), na.rm = T)

Maha_wfe_lag.two_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coverage), na.rm = T)

ols_coverage_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$ols_coverage), na.rm = T)

Synth_wfe_lag.one_coverage_50
Synth_wfe_lag.two_coverage_50
Pscore_wfe_lag.one_coverage_50
Pscore_wfe_lag.two_coverage_50
CBPS_wfe_lag.one_coverage_50
CBPS_wfe_lag.two_coverage_50
Maha_wfe_lag.one_coverage_50
Maha_wfe_lag.two_coverage_50
ols_coverage_50

# N = 100
Synth_wfe_lag.one_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coverage), na.rm = T)

Pscore_wfe_lag.one_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coverage), na.rm = T)

CBPS_wfe_lag.one_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coverage), na.rm = T)

Maha_wfe_lag.one_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coverage), na.rm = T)

Synth_wfe_lag.two_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coverage), na.rm = T)

Pscore_wfe_lag.two_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coverage), na.rm = T)

CBPS_wfe_lag.two_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coverage), na.rm = T)

Maha_wfe_lag.two_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coverage), na.rm = T)

ols_coverage_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$ols_coverage), na.rm = T)

Synth_wfe_lag.one_coverage_100
Synth_wfe_lag.two_coverage_100
Pscore_wfe_lag.one_coverage_100
Pscore_wfe_lag.two_coverage_100
CBPS_wfe_lag.one_coverage_100
CBPS_wfe_lag.two_coverage_100
Maha_wfe_lag.one_coverage_100
Maha_wfe_lag.two_coverage_100
ols_coverage_100

# N = 200
Synth_wfe_lag.one_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.one_coverage), na.rm = T)

Pscore_wfe_lag.one_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.one_coverage), na.rm = T)

CBPS_wfe_lag.one_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.one_coverage), na.rm = T)

Maha_wfe_lag.one_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.one_coverage), na.rm = T)

Synth_wfe_lag.two_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Synth_wfe_lag.two_coverage), na.rm = T)

Pscore_wfe_lag.two_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Pscore_wfe_lag.two_coverage), na.rm = T)

CBPS_wfe_lag.two_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$CBPS_wfe_lag.two_coverage), na.rm = T)

Maha_wfe_lag.two_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$Maha_wfe_lag.two_coverage), na.rm = T)

ols_coverage_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$ols_coverage), na.rm = T)

Synth_wfe_lag.one_coverage_200
Synth_wfe_lag.two_coverage_200
Pscore_wfe_lag.one_coverage_200
Pscore_wfe_lag.two_coverage_200
CBPS_wfe_lag.one_coverage_200
CBPS_wfe_lag.two_coverage_200
Maha_wfe_lag.one_coverage_200
Maha_wfe_lag.two_coverage_200
ols_coverage_200



### Bias Plot for L = 4 ###
plot.materials <- c(Synth_wfe_lag.one_coef_50, 
                    Synth_wfe_lag.one_coef_100,
                    Synth_wfe_lag.one_coef_200,
                    Maha_wfe_lag.one_coef_50, 
                    Maha_wfe_lag.one_coef_100,
                    Maha_wfe_lag.one_coef_200,
                    Pscore_wfe_lag.one_coef_50, 
                    Pscore_wfe_lag.one_coef_100,
                    Pscore_wfe_lag.one_coef_200,
                    CBPS_wfe_lag.one_coef_50, 
                    CBPS_wfe_lag.one_coef_100,
                    CBPS_wfe_lag.one_coef_200,
                    ols_coef_50,
                    ols_coef_100,
                    ols_coef_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                              rep("Maha", 3),
                              rep("Pscore", 3),
                              rep("CBPS", 3),
                              rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "Bias") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")
 
### Bias Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_lag.two_coef_50, 
                    Synth_wfe_lag.two_coef_100,
                    Synth_wfe_lag.two_coef_200,
                    Maha_wfe_lag.two_coef_50, 
                    Maha_wfe_lag.two_coef_100,
                    Maha_wfe_lag.two_coef_200,
                    Pscore_wfe_lag.two_coef_50, 
                    Pscore_wfe_lag.two_coef_100,
                    Pscore_wfe_lag.two_coef_200,
                    CBPS_wfe_lag.two_coef_50, 
                    CBPS_wfe_lag.two_coef_100,
                    CBPS_wfe_lag.two_coef_200,
                    ols_coef_50,
                    ols_coef_100,
                    ols_coef_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "Bias") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")

### RMSE Plot for L = 4 ### 
plot.materials <- c(Synth_wfe_lag.one_RMSE_50, 
                    Synth_wfe_lag.one_RMSE_100,
                    Synth_wfe_lag.one_RMSE_200,
                    Maha_wfe_lag.one_RMSE_50, 
                    Maha_wfe_lag.one_RMSE_100,
                    Maha_wfe_lag.one_RMSE_200,
                    Pscore_wfe_lag.one_RMSE_50, 
                    Pscore_wfe_lag.one_RMSE_100,
                    Pscore_wfe_lag.one_RMSE_200,
                    CBPS_wfe_lag.one_RMSE_50, 
                    CBPS_wfe_lag.one_RMSE_100,
                    CBPS_wfe_lag.one_RMSE_200,
                    ols_RMSE_50,
                    ols_RMSE_100,
                    ols_RMSE_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "RMSE") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")



### RMSE Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_lag.two_RMSE_50, 
                    Synth_wfe_lag.two_RMSE_100,
                    Synth_wfe_lag.two_RMSE_200,
                    Maha_wfe_lag.two_RMSE_50, 
                    Maha_wfe_lag.two_RMSE_100,
                    Maha_wfe_lag.two_RMSE_200,
                    Pscore_wfe_lag.two_RMSE_50, 
                    Pscore_wfe_lag.two_RMSE_100,
                    Pscore_wfe_lag.two_RMSE_200,
                    CBPS_wfe_lag.two_RMSE_50, 
                    CBPS_wfe_lag.two_RMSE_100,
                    CBPS_wfe_lag.two_RMSE_200,
                    ols_RMSE_50,
                    ols_RMSE_100,
                    ols_RMSE_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "RMSE") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")




### sd Plot for L = 4 ###
plot.materials <- c(Synth_wfe_lag.one_sd_50, 
                    Synth_wfe_lag.one_sd_100,
                    Synth_wfe_lag.one_sd_200,
                    Maha_wfe_lag.one_sd_50, 
                    Maha_wfe_lag.one_sd_100,
                    Maha_wfe_lag.one_sd_200,
                    Pscore_wfe_lag.one_sd_50, 
                    Pscore_wfe_lag.one_sd_100,
                    Pscore_wfe_lag.one_sd_200,
                    CBPS_wfe_lag.one_sd_50, 
                    CBPS_wfe_lag.one_sd_100,
                    CBPS_wfe_lag.one_sd_200,
                    ols_sd_50,
                    ols_sd_100,
                    ols_sd_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "SD") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")

### sd Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_lag.two_sd_50, 
                    Synth_wfe_lag.two_sd_100,
                    Synth_wfe_lag.two_sd_200,
                    Maha_wfe_lag.two_sd_50, 
                    Maha_wfe_lag.two_sd_100,
                    Maha_wfe_lag.two_sd_200,
                    Pscore_wfe_lag.two_sd_50, 
                    Pscore_wfe_lag.two_sd_100,
                    Pscore_wfe_lag.two_sd_200,
                    CBPS_wfe_lag.two_sd_50, 
                    CBPS_wfe_lag.two_sd_100,
                    CBPS_wfe_lag.two_sd_200,
                    ols_sd_50,
                    ols_sd_100,
                    ols_sd_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("OLS", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "SD") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")


###### Misspecified Models ######
load("New_N50_ephi0.5_T20_hetereo_mis")

Synth_wfe_mis_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_coef_50
Synth_wfe_mis_lag.two_coef_50
Pscore_wfe_mis_lag.one_coef_50
Pscore_wfe_mis_lag.two_coef_50
CBPS_wfe_mis_lag.one_coef_50
CBPS_wfe_mis_lag.two_coef_50
Maha_wfe_mis_lag.one_coef_50
Maha_wfe_mis_lag.two_coef_50
ols_mis_coef_50


load("New_N100_ephi0.5_T20_hetereo_mis")
Synth_wfe_mis_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_coef_100
Synth_wfe_mis_lag.two_coef_100
Pscore_wfe_mis_lag.one_coef_100
Pscore_wfe_mis_lag.two_coef_100
CBPS_wfe_mis_lag.one_coef_100
CBPS_wfe_mis_lag.two_coef_100
Maha_wfe_mis_lag.one_coef_100
Maha_wfe_mis_lag.two_coef_100
ols_mis_coef_100



load("New_N200_ephi0.5_T20_hetereo_mis")
Synth_wfe_mis_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_coef_200
Synth_wfe_mis_lag.two_coef_200
Pscore_wfe_mis_lag.one_coef_200
Pscore_wfe_mis_lag.two_coef_200
CBPS_wfe_mis_lag.one_coef_200
CBPS_wfe_mis_lag.two_coef_200
Maha_wfe_mis_lag.one_coef_200
Maha_wfe_mis_lag.two_coef_200
ols_mis_coef_200


########## RMSE ##############
Synth_wfe_mis_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.one_coef)), na.rm = T)

Synth_wfe_mis_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.two_coef)), na.rm = T)

Maha_wfe_mis_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.one_coef)), na.rm = T)

Maha_wfe_mis_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.two_coef)), na.rm = T)

Pscore_wfe_mis_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.one_coef)), na.rm = T)

Pscore_wfe_mis_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.two_coef)), na.rm = T)

CBPS_wfe_mis_lag.one_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.one_coef)), na.rm = T)

CBPS_wfe_mis_lag.two_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.two_coef)), na.rm = T)

ols_mis_RMSE_50 <- mean(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$ols_mis_coef)), na.rm = T)

Synth_wfe_mis_lag.one_RMSE_50
Synth_wfe_mis_lag.two_RMSE_50
Pscore_wfe_mis_lag.one_RMSE_50
Pscore_wfe_mis_lag.two_RMSE_50
CBPS_wfe_mis_lag.one_RMSE_50
CBPS_wfe_mis_lag.two_RMSE_50
Maha_wfe_mis_lag.one_RMSE_50
Maha_wfe_mis_lag.two_RMSE_50
ols_mis_RMSE_50

## N = 100
Synth_wfe_mis_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.one_coef)), na.rm = T)

Synth_wfe_mis_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.two_coef)), na.rm = T)

Maha_wfe_mis_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.one_coef)), na.rm = T)

Maha_wfe_mis_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.two_coef)), na.rm = T)

Pscore_wfe_mis_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.one_coef)), na.rm = T)

Pscore_wfe_mis_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.two_coef)), na.rm = T)

CBPS_wfe_mis_lag.one_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.one_coef)), na.rm = T)

CBPS_wfe_mis_lag.two_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.two_coef)), na.rm = T)

ols_mis_RMSE_100 <- mean(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$ols_mis_coef)), na.rm = T)

Synth_wfe_mis_lag.one_RMSE_100
Synth_wfe_mis_lag.two_RMSE_100
Pscore_wfe_mis_lag.one_RMSE_100
Pscore_wfe_mis_lag.two_RMSE_100
CBPS_wfe_mis_lag.one_RMSE_100
CBPS_wfe_mis_lag.two_RMSE_100
Maha_wfe_mis_lag.one_RMSE_100
Maha_wfe_mis_lag.two_RMSE_100
ols_mis_RMSE_100

## N = 200
Synth_wfe_mis_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.one_coef)), na.rm = T)

Synth_wfe_mis_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Synth_wfe_mis_lag.two_coef)), na.rm = T)

Maha_wfe_mis_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.one_coef)), na.rm = T)

Maha_wfe_mis_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Maha_wfe_mis_lag.two_coef)), na.rm = T)

Pscore_wfe_mis_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.one_coef)), na.rm = T)

Pscore_wfe_mis_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$Pscore_wfe_mis_lag.two_coef)), na.rm = T)

CBPS_wfe_mis_lag.one_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.one_coef)), na.rm = T)

CBPS_wfe_mis_lag.two_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$CBPS_wfe_mis_lag.two_coef)), na.rm = T)

ols_mis_RMSE_200 <- mean(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) abs(1- x$ols_mis_coef)), na.rm = T)

Synth_wfe_mis_lag.one_RMSE_200
Synth_wfe_mis_lag.two_RMSE_200
Pscore_wfe_mis_lag.one_RMSE_200
Pscore_wfe_mis_lag.two_RMSE_200
CBPS_wfe_mis_lag.one_RMSE_200
CBPS_wfe_mis_lag.two_RMSE_200
Maha_wfe_mis_lag.one_RMSE_200
Maha_wfe_mis_lag.two_RMSE_200
ols_mis_RMSE_200

###### SD #######
load("New_N50_ephi0.5_T20_hetereo_mis")

Synth_wfe_mis_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_sd_50 <- sd(sapply(New_N50_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_sd_50
Synth_wfe_mis_lag.two_sd_50
Pscore_wfe_mis_lag.one_sd_50
Pscore_wfe_mis_lag.two_sd_50
CBPS_wfe_mis_lag.one_sd_50
CBPS_wfe_mis_lag.two_sd_50
Maha_wfe_mis_lag.one_sd_50
Maha_wfe_mis_lag.two_sd_50
ols_mis_sd_50


load("New_N100_ephi0.5_T20_hetereo_mis")
Synth_wfe_mis_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_sd_100 <- sd(sapply(New_N100_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_sd_100
Synth_wfe_mis_lag.two_sd_100
Pscore_wfe_mis_lag.one_sd_100
Pscore_wfe_mis_lag.two_sd_100
CBPS_wfe_mis_lag.one_sd_100
CBPS_wfe_mis_lag.two_sd_100
Maha_wfe_mis_lag.one_sd_100
Maha_wfe_mis_lag.two_sd_100
ols_mis_sd_100


load("New_N200_ephi0.5_T20_hetereo_mis")
Synth_wfe_mis_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.one_coef), na.rm = T)

Pscore_wfe_mis_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.one_coef), na.rm = T)

CBPS_wfe_mis_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.one_coef), na.rm = T)

Maha_wfe_mis_lag.one_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.one_coef), na.rm = T)

Synth_wfe_mis_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Synth_wfe_mis_lag.two_coef), na.rm = T)

Pscore_wfe_mis_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Pscore_wfe_mis_lag.two_coef), na.rm = T)

CBPS_wfe_mis_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$CBPS_wfe_mis_lag.two_coef), na.rm = T)

Maha_wfe_mis_lag.two_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$Maha_wfe_mis_lag.two_coef), na.rm = T)

ols_mis_sd_200 <- sd(sapply(New_N200_ephi0.5_T20_hetereo_mis, function (x) x$ols_mis_coef), na.rm = T)

Synth_wfe_mis_lag.one_sd_200
Synth_wfe_mis_lag.two_sd_200
Pscore_wfe_mis_lag.one_sd_200
Pscore_wfe_mis_lag.two_sd_200
CBPS_wfe_mis_lag.one_sd_200
CBPS_wfe_mis_lag.two_sd_200
Maha_wfe_mis_lag.one_sd_200
Maha_wfe_mis_lag.two_sd_200
ols_mis_sd_200



### Bias Plot for L = 4 ###
plot.materials <- c(Synth_wfe_mis_lag.one_coef_50, 
                    Synth_wfe_mis_lag.one_coef_100,
                    Synth_wfe_mis_lag.one_coef_200,
                    Maha_wfe_mis_lag.one_coef_50, 
                    Maha_wfe_mis_lag.one_coef_100,
                    Maha_wfe_mis_lag.one_coef_200,
                    Pscore_wfe_mis_lag.one_coef_50, 
                    Pscore_wfe_mis_lag.one_coef_100,
                    Pscore_wfe_mis_lag.one_coef_200,
                    CBPS_wfe_mis_lag.one_coef_50, 
                    CBPS_wfe_mis_lag.one_coef_100,
                    CBPS_wfe_mis_lag.one_coef_200,
                    ols_mis_coef_50,
                    ols_mis_coef_100,
                    ols_mis_coef_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "Bias") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")

### Bias Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_mis_lag.two_coef_50, 
                    Synth_wfe_mis_lag.two_coef_100,
                    Synth_wfe_mis_lag.two_coef_200,
                    Maha_wfe_mis_lag.two_coef_50, 
                    Maha_wfe_mis_lag.two_coef_100,
                    Maha_wfe_mis_lag.two_coef_200,
                    Pscore_wfe_mis_lag.two_coef_50, 
                    Pscore_wfe_mis_lag.two_coef_100,
                    Pscore_wfe_mis_lag.two_coef_200,
                    CBPS_wfe_mis_lag.two_coef_50, 
                    CBPS_wfe_mis_lag.two_coef_100,
                    CBPS_wfe_mis_lag.two_coef_200,
                    ols_mis_coef_50,
                    ols_mis_coef_100,
                    ols_mis_coef_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "Bias") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")

### RMSE Plot for L = 4 ### 
plot.materials <- c(Synth_wfe_mis_lag.one_RMSE_50, 
                    Synth_wfe_mis_lag.one_RMSE_100,
                    Synth_wfe_mis_lag.one_RMSE_200,
                    Maha_wfe_mis_lag.one_RMSE_50, 
                    Maha_wfe_mis_lag.one_RMSE_100,
                    Maha_wfe_mis_lag.one_RMSE_200,
                    Pscore_wfe_mis_lag.one_RMSE_50, 
                    Pscore_wfe_mis_lag.one_RMSE_100,
                    Pscore_wfe_mis_lag.one_RMSE_200,
                    CBPS_wfe_mis_lag.one_RMSE_50, 
                    CBPS_wfe_mis_lag.one_RMSE_100,
                    CBPS_wfe_mis_lag.one_RMSE_200,
                    ols_mis_RMSE_50,
                    ols_mis_RMSE_100,
                    ols_mis_RMSE_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "RMSE") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")



### RMSE Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_mis_lag.two_RMSE_50, 
                    Synth_wfe_mis_lag.two_RMSE_100,
                    Synth_wfe_mis_lag.two_RMSE_200,
                    Maha_wfe_mis_lag.two_RMSE_50, 
                    Maha_wfe_mis_lag.two_RMSE_100,
                    Maha_wfe_mis_lag.two_RMSE_200,
                    Pscore_wfe_mis_lag.two_RMSE_50, 
                    Pscore_wfe_mis_lag.two_RMSE_100,
                    Pscore_wfe_mis_lag.two_RMSE_200,
                    CBPS_wfe_mis_lag.two_RMSE_50, 
                    CBPS_wfe_mis_lag.two_RMSE_100,
                    CBPS_wfe_mis_lag.two_RMSE_200,
                    ols_mis_RMSE_50,
                    ols_mis_RMSE_100,
                    ols_mis_RMSE_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "RMSE") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")




### sd Plot for L = 4 ###
plot.materials <- c(Synth_wfe_mis_lag.one_sd_50, 
                    Synth_wfe_mis_lag.one_sd_100,
                    Synth_wfe_mis_lag.one_sd_200,
                    Maha_wfe_mis_lag.one_sd_50, 
                    Maha_wfe_mis_lag.one_sd_100,
                    Maha_wfe_mis_lag.one_sd_200,
                    Pscore_wfe_mis_lag.one_sd_50, 
                    Pscore_wfe_mis_lag.one_sd_100,
                    Pscore_wfe_mis_lag.one_sd_200,
                    CBPS_wfe_mis_lag.one_sd_50, 
                    CBPS_wfe_mis_lag.one_sd_100,
                    CBPS_wfe_mis_lag.one_sd_200,
                    ols_mis_sd_50,
                    ols_mis_sd_100,
                    ols_mis_sd_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "SD") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")

### sd Plot for L = 6 ### 
plot.materials <- c(Synth_wfe_mis_lag.two_sd_50, 
                    Synth_wfe_mis_lag.two_sd_100,
                    Synth_wfe_mis_lag.two_sd_200,
                    Maha_wfe_mis_lag.two_sd_50, 
                    Maha_wfe_mis_lag.two_sd_100,
                    Maha_wfe_mis_lag.two_sd_200,
                    Pscore_wfe_mis_lag.two_sd_50, 
                    Pscore_wfe_mis_lag.two_sd_100,
                    Pscore_wfe_mis_lag.two_sd_200,
                    CBPS_wfe_mis_lag.two_sd_50, 
                    CBPS_wfe_mis_lag.two_sd_100,
                    CBPS_wfe_mis_lag.two_sd_200,
                    ols_mis_sd_50,
                    ols_mis_sd_100,
                    ols_mis_sd_200)
df <- data.frame(x = rep(c(50, 100, 200), 5), 
                 val = plot.materials,
                 method = c(rep("Synth", 3), 
                            rep("Maha", 3),
                            rep("Pscore", 3),
                            rep("CBPS", 3),
                            rep("ols_mis", 3)))

ggplot() + 
  geom_line(aes(x=factor(x), y=val, group = method,
                colour = method), df) +
  labs(x = "N", y = "SD") + theme_bw() +
  geom_hline(yintercept = 0, linetype = "dashed", 
             colour = "black")


# 
# 
# load("New_N100_ephi0_homo")
# Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$ols_coef), na.rm = T))
# Synth_wfe_lag.one_coef_100
# Synth_wfe_lag.two_coef_100
# Pscore_wfe_lag.one_coef_100
# Pscore_wfe_lag.two_coef_100
# Maha_wfe_lag.one_coef_100
# Maha_wfe_lag.two_coef_100
# ols_coef_100
# 
# 
# load("New_N200_ephi0_homo")
# Synth_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Maha_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# Maha_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# ols_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$ols_coef), na.rm = T))
# Synth_wfe_lag.one_coef_200
# Synth_wfe_lag.two_coef_200
# Pscore_wfe_lag.one_coef_200
# Pscore_wfe_lag.two_coef_200
# Maha_wfe_lag.one_coef_200
# Maha_wfe_lag.two_coef_200
# ols_coef_200
# 
# 
# 
# 
# load("New_N300_ephi0_homo")
# Synth_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Maha_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# Maha_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# ols_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$ols_coef), na.rm = T))
# Synth_wfe_lag.one_coef_300
# Synth_wfe_lag.two_coef_300
# Pscore_wfe_lag.one_coef_300
# Pscore_wfe_lag.two_coef_300
# Maha_wfe_lag.one_coef_300
# Maha_wfe_lag.two_coef_300
# ols_coef_300
# 
# # lag two
# plot(1:4,
#     c(Synth_wfe_lag.two_coef_50, Synth_wfe_lag.two_coef_100, Synth_wfe_lag.two_coef_200, Synth_wfe_lag.two_coef_300)
# , main = "Bias", xlab = "N", ylab = "bias", type = "b", col = "black",
# ylim = c(0, .01))
# points(1:4,c(Maha_wfe_lag.two_coef_50, 
#             Maha_wfe_lag.two_coef_100, Maha_wfe_lag.two_coef_200, Maha_wfe_lag.two_coef_300)
# , col = "blue", type = "b")
# points(1:4, c(Pscore_wfe_lag.two_coef_50, Pscore_wfe_lag.two_coef_100, 
#              Pscore_wfe_lag.two_coef_200, Pscore_wfe_lag.two_coef_300)
# , col = "red", type = "b")
# points(1:4, c(ols_coef_50, ols_coef_100, 
#               ols_coef_200, ols_coef_300)
#        , col = "purple", type = "b")
# 
# load("New_N50_ephi0_hetereo")
# Synth_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Maha_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# Maha_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# ols_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$ols_coef), na.rm = T))
# 
# Synth_wfe_lag.one_coef_50
# Synth_wfe_lag.two_coef_50
# Pscore_wfe_lag.one_coef_50
# Pscore_wfe_lag.two_coef_50
# Maha_wfe_lag.one_coef_50
# Maha_wfe_lag.two_coef_50
# ols_coef_50
# 
# 
# 
# load("New_N100_ephi0_hetereo")
# Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$ols_coef), na.rm = T))
# 
# Synth_wfe_lag.one_coef_100
# Synth_wfe_lag.two_coef_100
# Pscore_wfe_lag.one_coef_100
# Pscore_wfe_lag.two_coef_100
# Maha_wfe_lag.one_coef_100
# Maha_wfe_lag.two_coef_100
# ols_coef_100
# 
# 
# 
# # lag one
# c(Synth_wfe_lag.one_coef_50, Synth_wfe_lag.one_coef_100, Synth_wfe_lag.one_coef_200, Synth_wfe_lag.one_coef_300)
# c(Maha_wfe_lag.one_coef_50, Maha_wfe_lag.one_coef_100, Maha_wfe_lag.one_coef_200, Maha_wfe_lag.one_coef_300)
# c(Pscore_wfe_lag.one_coef_50, Pscore_wfe_lag.one_coef_100, Pscore_wfe_lag.one_coef_200, Pscore_wfe_lag.one_coef_300)
# 
# c(ols_coef_50, ols_coef_100, ols_coef_200, ols_coef_300)
# 
# 
# 
# setwd("~/Dropbox/w2fe/Simulations/results")
# load("New_N50_ephi0.5_T20_hetereo")
# ols_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T))
# Synth_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                                function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# Maha_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                                function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                                function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                                function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# Maha_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                               function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
#                                                 function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# 
# load("New_N100_ephi0.5_T20_hetereo")
# ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T))
# Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                                function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
# Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                               function (x) x$Maha_wfe_lag.one_coef), na.rm = T))
# 
# Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                                 function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))
# 
# Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                                function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
# Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                               function (x) x$Maha_wfe_lag.two_coef), na.rm = T))
# 
# Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
#                                                 function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))
# 
# 
# 
# 
# # 
# # load("N500_T5_rho8")
# # ols_N500_T5 <- abs(1-mean(sapply(N500_T5_rho8, function (x) x$x1), na.rm = T))
# # 
# # load("N500_T10_rho8")
# # ols_N500_T10 <- abs(1-mean(sapply(N500_T10_rho8, function (x) x$x1), na.rm = T))
# # 
# # load("N500_T20_rho8")
# # ols_N500_T20 <- abs(1-mean(sapply(N500_T20_rho8, function (x) x$x1), na.rm = T))
# # 
# # load("N500_T30_rho8")
# # ols_N500_T30 <- abs(1-mean(sapply(N500_T30_rho8, function (x) x$x1), na.rm = T))
# # 
# # 
# # load("N50_T5_rho5")
# # ols_N50_T5_rho5 <- abs(1-mean(sapply(N50_T5_rho5, function (x) x$x1), na.rm = T))
# # load("N1000_T5_rho5")
# # ols_N1000_T5_rho5 <- abs(1-mean(sapply(N1000_T5_rho5, function (x) x$x1), na.rm = T))
# # 
# # load("N50_T5_rho8")
# # ols_N50_T5_rho8 <- abs(1-mean(sapply(N50_T5_rho8, function (x) x$x1), na.rm = T))
# # load("N1000_T5_rho8")
# # ols_N1000_T5_rho8 <- abs(1-mean(sapply(N1000_T5_rho8, function (x) x$x1), na.rm = T))
# # 
# # load("N50_T20_rho8")
# # ols_N50_T20_rho8 <- abs(1-mean(sapply(N50_T20_rho8, function (x) x$x1), na.rm = T))
# # load("N1000_T20_rho8")
# # ols_N1000_T20_rho8 <- abs(1-mean(sapply(N1000_T20_rho8, function (x) x$x1), na.rm = T))
# # 
# # load("N1000_T10_rho8")
# # ols_N1000_T10_rho8 <- abs(1-mean(sapply(N1000_T10_rho8, function (x) x$x1), na.rm = T))
# # 
# 
# 
# setwd("~/Dropbox/w2fe/Simulations/results")
# load("New_N50_ephi0.5_T10_hetereo")
# load("New_N100_ephi0.5_T10_hetereo")
# load("New_N200_ephi0.5_T10_hetereo")
# load("New_N300_ephi0.5_T10_hetereo")
# 
# library(scales)
# # N = 50
# ols_coef_50 <- percent(abs(1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)))
# Synth_wfe_lag.one_coef_50 <- percent(abs(1-mean(sapply(New_N50_ephi0.5_T10_hetereo, 
#                                                        function (x) x$Synth_wfe_lag.one_coef), na.rm = T)))
# Maha_wfe_lag.one_coef_50 <- percent(abs(1-mean(sapply(New_N50_ephi0.5_T10_hetereo, 
#                                                       function (x) x$Maha_wfe_lag.one_coef), na.rm = T)))
# 
# Pscore_wfe_lag.one_coef_50 <- percent(abs(1-mean(sapply(New_N50_ephi0.5_T10_hetereo, 
#                                                         function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)))
# 
# 
# # N = 100
# ols_coef_100 <- percent(abs(1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)))
# Synth_wfe_lag.one_coef_100 <- percent(abs(1-mean(sapply(New_N100_ephi0.5_T10_hetereo, 
#                                                         function (x) x$Synth_wfe_lag.one_coef), na.rm = T)))
# Maha_wfe_lag.one_coef_100 <- percent(abs(1-mean(sapply(New_N100_ephi0.5_T10_hetereo, 
#                                                        function (x) x$Maha_wfe_lag.one_coef), na.rm = T)))
# 
# Pscore_wfe_lag.one_coef_100 <- percent(abs(1-mean(sapply(New_N100_ephi0.5_T10_hetereo, 
#                                                          function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)))
# 
# 
# # N = 200
# ols_coef_200 <- percent(abs(1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)))
# Synth_wfe_lag.one_coef_200 <- percent(abs(1-mean(sapply(New_N200_ephi0.5_T10_hetereo, 
#                                                         function (x) x$Synth_wfe_lag.one_coef), na.rm = T)))
# Maha_wfe_lag.one_coef_200 <- percent(abs(1-mean(sapply(New_N200_ephi0.5_T10_hetereo, 
#                                                        function (x) x$Maha_wfe_lag.one_coef), na.rm = T)))
# 
# Pscore_wfe_lag.one_coef_200 <- percent(abs(1-mean(sapply(New_N200_ephi0.5_T10_hetereo, 
#                                                          function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)))
# 
# 
# # N = 300
# ols_coef_300 <- percent(abs(1-mean(sapply(New_N300_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)))
# Synth_wfe_lag.one_coef_300 <- percent(abs(1-mean(sapply(New_N300_ephi0.5_T10_hetereo, 
#                                                         function (x) x$Synth_wfe_lag.one_coef), na.rm = T)))
# Maha_wfe_lag.one_coef_300 <- percent(abs(1-mean(sapply(New_N300_ephi0.5_T10_hetereo, 
#                                                        function (x) x$Maha_wfe_lag.one_coef), na.rm = T)))
# 
# Pscore_wfe_lag.one_coef_300 <- percent(abs(1-mean(sapply(New_N300_ephi0.5_T10_hetereo, 
#                                                          function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)))
# 
# 
# 
# 
# 
# 
# parameters <- c("Synth L = 4",  "Maha L = 4", 
#                 "Pscore L = 4",  "OLS")
# N50 <- c(Synth_wfe_lag.one_coef_50, 
#          Maha_wfe_lag.one_coef_50, 
#          Pscore_wfe_lag.one_coef_50, 
#          ols_coef_50)
# 
# N100 <- c(Synth_wfe_lag.one_coef_100, 
#          Maha_wfe_lag.one_coef_100, 
#          Pscore_wfe_lag.one_coef_100, 
#          ols_coef_100)
# 
# N200 <- c(Synth_wfe_lag.one_coef_200, 
#          Maha_wfe_lag.one_coef_200, 
#          Pscore_wfe_lag.one_coef_200, 
#          ols_coef_200)
# 
# N300 <- c(Synth_wfe_lag.one_coef_300, 
#           Maha_wfe_lag.one_coef_300, 
#           Pscore_wfe_lag.one_coef_300, 
#           ols_coef_300)
# 
# 
# length(sapply(New_N300_ephi0.5_T10_hetereo, function(x) x$Pscore_wfe_lag.one_coverage))
# 
# 
# 
# 
setwd("~/Dropbox/w2fe/Simulations/results")
load("small_N50")
load("small_N100")
load("small_N200")
load("small_N500")
load("small_N1000")

load("small_T10_N50")
load("small_T10_N100")
load("small_T10_N200")
load("small_T10_N500")
load("small_T10_N1000")

load("small_T20_N50")
load("small_T20_N100")
load("small_T20_N200")
load("small_T20_N500")
load("small_T20_N1000")






## T = 5
# coef
mean(sapply(small_N50, function(x) x$ols1_coef))
mean(sapply(small_N50, function(x) x$ols2_coef))
mean(sapply(small_N50, function(x) x$ols3_coef)) # no bias
mean(sapply(small_N50, function(x) x$ols4_coef))
mean(sapply(small_N50, function(x) x$ols5_coef))

mean(sapply(small_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_N100, function(x) x$ols2_coef))
mean(sapply(small_N100, function(x) x$ols3_coef)) # no bias
mean(sapply(small_N100, function(x) x$ols4_coef))
mean(sapply(small_N100, function(x) x$ols5_coef))


mean(sapply(small_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_N200, function(x) x$ols2_coef))
mean(sapply(small_N200, function(x) x$ols3_coef)) # no bias
mean(sapply(small_N200, function(x) x$ols4_coef))
mean(sapply(small_N200, function(x) x$ols5_coef))

mean(sapply(small_N500, function(x) x$ols1_coef))
mean(sapply(small_N500, function(x) x$ols2_coef))
mean(sapply(small_N500, function(x) x$ols3_coef)) # no bias
mean(sapply(small_N500, function(x) x$ols4_coef))
mean(sapply(small_N500, function(x) x$ols5_coef))

mean(sapply(small_N1000, function(x) x$ols1_coef))
mean(sapply(small_N1000, function(x) x$ols2_coef))
mean(sapply(small_N1000, function(x) x$ols3_coef))
mean(sapply(small_N1000, function(x) x$ols4_coef))
mean(sapply(small_N1000, function(x) x$ols5_coef))

## T = 10
# coef
mean(sapply(small_T10_N50, function(x) x$ols1_coef))
mean(sapply(small_T10_N50, function(x) x$ols2_coef))
mean(sapply(small_T10_N50, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T10_N50, function(x) x$ols4_coef))
mean(sapply(small_T10_N50, function(x) x$ols5_coef))

mean(sapply(small_T10_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_T10_N100, function(x) x$ols2_coef))
mean(sapply(small_T10_N100, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T10_N100, function(x) x$ols4_coef))
mean(sapply(small_T10_N100, function(x) x$ols5_coef))


mean(sapply(small_T10_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_T10_N200, function(x) x$ols2_coef))
mean(sapply(small_T10_N200, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T10_N200, function(x) x$ols4_coef))
mean(sapply(small_T10_N200, function(x) x$ols5_coef))

mean(sapply(small_T10_N500, function(x) x$ols1_coef))
mean(sapply(small_T10_N500, function(x) x$ols2_coef))
mean(sapply(small_T10_N500, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T10_N500, function(x) x$ols4_coef))
mean(sapply(small_T10_N500, function(x) x$ols5_coef))

mean(sapply(small_T10_N1000, function(x) x$ols1_coef))
mean(sapply(small_T10_N1000, function(x) x$ols2_coef))
mean(sapply(small_T10_N1000, function(x) x$ols3_coef))
mean(sapply(small_T10_N1000, function(x) x$ols4_coef))
mean(sapply(small_T10_N1000, function(x) x$ols5_coef))

## T = 20
# coef
mean(sapply(small_T20_N50, function(x) x$ols1_coef))
mean(sapply(small_T20_N50, function(x) x$ols2_coef))
mean(sapply(small_T20_N50, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T20_N50, function(x) x$ols4_coef))
mean(sapply(small_T20_N50, function(x) x$ols5_coef))

mean(sapply(small_T20_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_T20_N100, function(x) x$ols2_coef))
mean(sapply(small_T20_N100, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T20_N100, function(x) x$ols4_coef))
mean(sapply(small_T20_N100, function(x) x$ols5_coef))

mean(sapply(small_T20_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_T20_N200, function(x) x$ols2_coef))
mean(sapply(small_T20_N200, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T20_N200, function(x) x$ols4_coef))
mean(sapply(small_T20_N200, function(x) x$ols5_coef))

mean(sapply(small_T20_N500, function(x) x$ols1_coef))
mean(sapply(small_T20_N500, function(x) x$ols2_coef))
mean(sapply(small_T20_N500, function(x) x$ols3_coef)) # no bias
mean(sapply(small_T20_N500, function(x) x$ols4_coef))
mean(sapply(small_T20_N500, function(x) x$ols5_coef))

mean(sapply(small_T20_N1000, function(x) x$ols1_coef))
mean(sapply(small_T20_N1000, function(x) x$ols2_coef))
mean(sapply(small_T20_N1000, function(x) x$ols3_coef))
mean(sapply(small_T20_N1000, function(x) x$ols4_coef))
mean(sapply(small_T20_N1000, function(x) x$ols5_coef))


setwd("~/Dropbox/w2fe/Simulations/results")
load("New_N50_ephi0.5_T5_hetereo")
New_N50_ephi0.5_T5_hetereo <- Filter(function (x) length(x) == 20, New_N50_ephi0.5_T5_hetereo)

Synth_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T5_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
# CBPS_wfe_lag.one_coef_50
# CBPS_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50

load("New_N100_ephi0.5_T5_hetereo")
New_N100_ephi0.5_T5_hetereo <- Filter(function (x) length(x) == 20, New_N100_ephi0.5_T5_hetereo)

Synth_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T5_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
# CBPS_wfe_lag.one_coef_100
# CBPS_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100


load("New_N200_ephi0.5_T5_hetereo")
New_N200_ephi0.5_T5_hetereo <- Filter(function (x) length(x) == 20, New_N200_ephi0.5_T5_hetereo)

Synth_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T5_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_200
Synth_wfe_lag.two_coef_200
Pscore_wfe_lag.one_coef_200
Pscore_wfe_lag.two_coef_200
# CBPS_wfe_lag.one_coef_200
# CBPS_wfe_lag.two_coef_200
Maha_wfe_lag.one_coef_200
Maha_wfe_lag.two_coef_200
ols_coef_200




