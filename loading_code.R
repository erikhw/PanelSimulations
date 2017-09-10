library(ggplot2)
setwd("~/Dropbox/w2fe/Simulations/results")
#############
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


load("New_N500_ephi0.5_T5_hetereo")
New_N500_ephi0.5_T5_hetereo <- Filter(function (x) length(x) == 20, New_N500_ephi0.5_T5_hetereo)

Synth_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T5_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_500
Synth_wfe_lag.two_coef_500
Pscore_wfe_lag.one_coef_500
Pscore_wfe_lag.two_coef_500
# CBPS_wfe_lag.one_coef_500
# CBPS_wfe_lag.two_coef_500
Maha_wfe_lag.one_coef_500
Maha_wfe_lag.two_coef_500
ols_coef_500


## T = 10
load("New_N50_ephi0.5_T10_hetereo")
New_N50_ephi0.5_T10_hetereo <- Filter(function (x) length(x) == 20, New_N50_ephi0.5_T10_hetereo)

Synth_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
# CBPS_wfe_lag.one_coef_50
# CBPS_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50

load("New_N100_ephi0.5_T10_hetereo")
New_N100_ephi0.5_T10_hetereo <- Filter(function (x) length(x) == 20, New_N100_ephi0.5_T10_hetereo)

Synth_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
# CBPS_wfe_lag.one_coef_100
# CBPS_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100


load("New_N200_ephi0.5_T10_hetereo")
New_N200_ephi0.5_T10_hetereo <- Filter(function (x) length(x) == 20, New_N200_ephi0.5_T10_hetereo)

Synth_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_200
Synth_wfe_lag.two_coef_200
Pscore_wfe_lag.one_coef_200
Pscore_wfe_lag.two_coef_200
# CBPS_wfe_lag.one_coef_200
# CBPS_wfe_lag.two_coef_200
Maha_wfe_lag.one_coef_200
Maha_wfe_lag.two_coef_200
ols_coef_200


load("New_N500_ephi0.5_T10_hetereo")
New_N500_ephi0.5_T10_hetereo <- Filter(function (x) length(x) == 20, New_N500_ephi0.5_T10_hetereo)

Synth_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

# CBPS_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

# CBPS_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_500 <- 1-mean(sapply(New_N500_ephi0.5_T10_hetereo, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_500
Synth_wfe_lag.two_coef_500
Pscore_wfe_lag.one_coef_500
Pscore_wfe_lag.two_coef_500
# CBPS_wfe_lag.one_coef_500
# CBPS_wfe_lag.two_coef_500
Maha_wfe_lag.one_coef_500
Maha_wfe_lag.two_coef_500
ols_coef_500



### OVB ###
setwd("~/Dropbox/w2fe/Simulations/results")
load("New_N50_ephi0.5_T20_hetereo_ovb")

Synth_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_50 <- 1-mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
CBPS_wfe_lag.one_coef_50
CBPS_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50

mean(sapply(New_N50_ephi0.5_T20_hetereo_ovb, function(x) x$prop))


load("New_N100_ephi0.5_T20_hetereo_ovb")
Synth_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_100 <- 1-mean(sapply(New_N100_ephi0.5_T20_hetereo_ovb, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
CBPS_wfe_lag.one_coef_100
CBPS_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100

load("New_N200_ephi0.5_T20_hetereo_ovb")
Synth_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.one_coef), na.rm = T)

Pscore_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T)

CBPS_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.one_coef), na.rm = T)

Maha_wfe_lag.one_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.one_coef), na.rm = T)

Synth_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Synth_wfe_lag.two_coef), na.rm = T)

Pscore_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T)

CBPS_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$CBPS_wfe_lag.two_coef), na.rm = T)

Maha_wfe_lag.two_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$Maha_wfe_lag.two_coef), na.rm = T)

ols_coef_200 <- 1-mean(sapply(New_N200_ephi0.5_T20_hetereo_ovb, function (x) x$ols_coef), na.rm = T)

Synth_wfe_lag.one_coef_200
Synth_wfe_lag.two_coef_200
Pscore_wfe_lag.one_coef_200
Pscore_wfe_lag.two_coef_200
CBPS_wfe_lag.one_coef_200
CBPS_wfe_lag.two_coef_200
Maha_wfe_lag.one_coef_200
Maha_wfe_lag.two_coef_200
ols_coef_200

###### Nickell #######
setwd("~/Dropbox/w2fe/Simulations/results")
load("small_rho6_N50")
load("small_rho6_N100")
load("small_rho6_N200")
load("small_rho6_N500")
load("small_rho6_N1000")

load("small_rho6_T10_N50")
load("small_rho6_T10_N100")
load("small_rho6_T10_N200")
load("small_rho6_T10_N500")
load("small_rho6_T10_N1000")

load("small_rho6_T20_N50")
load("small_rho6_T20_N100")
load("small_rho6_T20_N200")
load("small_rho6_T20_N500")
load("small_rho6_T20_N1000")

load("small_rho6_T30_N50")
load("small_rho6_T30_N100")
load("small_rho6_T30_N200")
load("small_rho6_T30_N500")
load("small_rho6_T30_N1000")

load("small_rho6_T50_N50")
load("small_rho6_T50_N100")
load("small_rho6_T50_N200")
load("small_rho6_T50_N500")
load("small_rho6_T50_N1000")

load("small_rho6_T100_N50")
load("small_rho6_T100_N100")
load("small_rho6_T100_N200")
load("small_rho6_T100_N500")
load("small_rho6_T100_N1000")

load("small_rho6_T200_N50")
load("small_rho6_T200_N200")
load("small_rho6_T200_N200")
load("small_rho6_T200_N500")
load("small_rho6_T200_N1000")

## T = 5
# coef
mean(sapply(small_rho6_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_N50, function(x) x$ols2_coef))


mean(sapply(small_rho6_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_N100, function(x) x$ols2_coef))



mean(sapply(small_rho6_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_N200, function(x) x$ols2_coef))

mean(sapply(small_rho6_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_N1000, function(x) x$ols2_coef))


## T = 10
# coef
mean(sapply(small_rho6_T10_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T10_N50, function(x) x$ols2_coef))

mean(sapply(small_rho6_T10_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T10_N100, function(x) x$ols2_coef))

mean(sapply(small_rho6_T10_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T10_N200, function(x) x$ols2_coef))

mean(sapply(small_rho6_T10_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T10_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_T10_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T10_N1000, function(x) x$ols2_coef))

## T = 20
# coef
mean(sapply(small_rho6_T20_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T20_N50, function(x) x$ols2_coef))

mean(sapply(small_rho6_T20_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T20_N100, function(x) x$ols2_coef))

mean(sapply(small_rho6_T20_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T20_N200, function(x) x$ols2_coef))

mean(sapply(small_rho6_T20_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T20_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_T20_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T20_N1000, function(x) x$ols2_coef))



## T = 30
# coef
mean(sapply(small_rho6_T30_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T30_N50, function(x) x$ols2_coef))


mean(sapply(small_rho6_T30_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T30_N100, function(x) x$ols2_coef))

mean(sapply(small_rho6_T30_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T30_N200, function(x) x$ols2_coef))

mean(sapply(small_rho6_T30_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T30_N500, function(x) x$ols2_coef))


mean(sapply(small_rho6_T30_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T30_N1000, function(x) x$ols2_coef))


## T = 50
# coef
mean(sapply(small_rho6_T50_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T50_N50, function(x) x$ols2_coef))

mean(sapply(small_rho6_T50_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T50_N100, function(x) x$ols2_coef))


mean(sapply(small_rho6_T50_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T50_N200, function(x) x$ols2_coef))


mean(sapply(small_rho6_T50_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T50_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_T50_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T50_N1000, function(x) x$ols2_coef))

## T = 100
# coef
mean(sapply(small_rho6_T100_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T100_N50, function(x) x$ols2_coef))

mean(sapply(small_rho6_T100_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T100_N100, function(x) x$ols2_coef))


mean(sapply(small_rho6_T100_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T100_N200, function(x) x$ols2_coef))


mean(sapply(small_rho6_T100_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T100_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_T100_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T100_N1000, function(x) x$ols2_coef))

## T = 200
# coef
mean(sapply(small_rho6_T200_N50, function(x) x$ols1_coef))
mean(sapply(small_rho6_T200_N50, function(x) x$ols2_coef))

mean(sapply(small_rho6_T200_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T200_N200, function(x) x$ols2_coef))


mean(sapply(small_rho6_T200_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho6_T200_N200, function(x) x$ols2_coef))


mean(sapply(small_rho6_T200_N500, function(x) x$ols1_coef))
mean(sapply(small_rho6_T200_N500, function(x) x$ols2_coef))

mean(sapply(small_rho6_T200_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho6_T200_N1000, function(x) x$ols2_coef))



########## 
load("small_rho8_N50")
load("small_rho8_N100")
load("small_rho8_N200")
load("small_rho8_N500")
load("small_rho8_N1000")

load("small_rho8_T10_N50")
load("small_rho8_T10_N100")
load("small_rho8_T10_N200")
load("small_rho8_T10_N500")
load("small_rho8_T10_N1000")

load("small_rho8_T20_N50")
load("small_rho8_T20_N100")
load("small_rho8_T20_N200")
load("small_rho8_T20_N500")
load("small_rho8_T20_N1000")

load("small_rho8_T30_N50")
load("small_rho8_T30_N100")
load("small_rho8_T30_N200")
load("small_rho8_T30_N500")
load("small_rho8_T30_N1000")

load("small_rho8_T50_N50")
load("small_rho8_T50_N100")
load("small_rho8_T50_N200")
load("small_rho8_T50_N500")
load("small_rho8_T50_N1000")

# load("small_rho8_T100_N50")
# load("small_rho8_T100_N100")
# load("small_rho8_T100_N200")
# load("small_rho8_T100_N500")
# load("small_rho8_T100_N1000")


## T = 5
# coef
mean(sapply(small_rho8_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_N50, function(x) x$ols2_coef))


mean(sapply(small_rho8_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_N100, function(x) x$ols2_coef))



mean(sapply(small_rho8_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_N200, function(x) x$ols2_coef))

mean(sapply(small_rho8_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_N500, function(x) x$ols2_coef))

mean(sapply(small_rho8_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_N1000, function(x) x$ols2_coef))


## T = 10
# coef
mean(sapply(small_rho8_T10_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_T10_N50, function(x) x$ols2_coef))

mean(sapply(small_rho8_T10_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T10_N100, function(x) x$ols2_coef))

mean(sapply(small_rho8_T10_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T10_N200, function(x) x$ols2_coef))

mean(sapply(small_rho8_T10_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_T10_N500, function(x) x$ols2_coef))

mean(sapply(small_rho8_T10_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_T10_N1000, function(x) x$ols2_coef))

## T = 20
# coef
mean(sapply(small_rho8_T20_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_T20_N50, function(x) x$ols2_coef))

mean(sapply(small_rho8_T20_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T20_N100, function(x) x$ols2_coef))

mean(sapply(small_rho8_T20_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T20_N200, function(x) x$ols2_coef))

mean(sapply(small_rho8_T20_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_T20_N500, function(x) x$ols2_coef))

mean(sapply(small_rho8_T20_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_T20_N1000, function(x) x$ols2_coef))



## T = 30
# coef
mean(sapply(small_rho8_T30_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_T30_N50, function(x) x$ols2_coef))


mean(sapply(small_rho8_T30_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T30_N100, function(x) x$ols2_coef))

mean(sapply(small_rho8_T30_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T30_N200, function(x) x$ols2_coef))

mean(sapply(small_rho8_T30_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_T30_N500, function(x) x$ols2_coef))


mean(sapply(small_rho8_T30_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_T30_N1000, function(x) x$ols2_coef))


## T = 50
# coef
mean(sapply(small_rho8_T50_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_T50_N50, function(x) x$ols2_coef))

mean(sapply(small_rho8_T50_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T50_N100, function(x) x$ols2_coef))


mean(sapply(small_rho8_T50_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T50_N200, function(x) x$ols2_coef))


mean(sapply(small_rho8_T50_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_T50_N500, function(x) x$ols2_coef))

mean(sapply(small_rho8_T50_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_T50_N1000, function(x) x$ols2_coef))


## T = 100
# coef
mean(sapply(small_rho8_T100_N50, function(x) x$ols1_coef))
mean(sapply(small_rho8_T100_N50, function(x) x$ols2_coef))

mean(sapply(small_rho8_T100_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T100_N100, function(x) x$ols2_coef))


mean(sapply(small_rho8_T100_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_rho8_T100_N200, function(x) x$ols2_coef))

mean(sapply(small_rho8_T100_N500, function(x) x$ols1_coef))
mean(sapply(small_rho8_T100_N500, function(x) x$ols2_coef))


mean(sapply(small_rho8_T100_N1000, function(x) x$ols1_coef))
mean(sapply(small_rho8_T100_N1000, function(x) x$ols2_coef))



### MIS ###
load("small_mis_rho6_N50")
load("small_mis_rho6_N100")
load("small_mis_rho6_N200")
load("small_mis_rho6_N500")
load("small_mis_rho6_N1000")

load("small_mis_rho6_T10_N50")
load("small_mis_rho6_T10_N100")
load("small_mis_rho6_T10_N200")
load("small_mis_rho6_T10_N500")
load("small_mis_rho6_T10_N1000")

load("small_mis_rho6_T20_N50")
load("small_mis_rho6_T20_N100")
load("small_mis_rho6_T20_N200")
load("small_mis_rho6_T20_N500")
load("small_mis_rho6_T20_N1000")

load("small_mis_rho6_T30_N50")
load("small_mis_rho6_T30_N100")
load("small_mis_rho6_T30_N200")
load("small_mis_rho6_T30_N500")
load("small_mis_rho6_T30_N1000")

load("small_mis_rho6_T50_N50")
load("small_mis_rho6_T50_N100")
load("small_mis_rho6_T50_N200")
load("small_mis_rho6_T50_N500")
load("small_mis_rho6_T50_N1000")



## T = 5
# coef
mean(sapply(small_mis_rho6_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_N50, function(x) x$ols2_coef))


mean(sapply(small_mis_rho6_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_N100, function(x) x$ols2_coef))



mean(sapply(small_mis_rho6_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_N1000, function(x) x$ols2_coef))


## T = 10
# coef
mean(sapply(small_mis_rho6_T10_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T10_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T10_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T10_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T10_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T10_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T10_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T10_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T10_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T10_N1000, function(x) x$ols2_coef))

## T = 20
# coef
mean(sapply(small_mis_rho6_T20_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T20_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T20_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T20_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T20_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T20_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T20_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T20_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T20_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T20_N1000, function(x) x$ols2_coef))



## T = 30
# coef
mean(sapply(small_mis_rho6_T30_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T30_N50, function(x) x$ols2_coef))


mean(sapply(small_mis_rho6_T30_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T30_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T30_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T30_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T30_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T30_N500, function(x) x$ols2_coef))


mean(sapply(small_mis_rho6_T30_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T30_N1000, function(x) x$ols2_coef))


## T = 50
# coef
mean(sapply(small_mis_rho6_T50_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T50_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T50_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T50_N100, function(x) x$ols2_coef))


mean(sapply(small_mis_rho6_T50_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho6_T50_N200, function(x) x$ols2_coef))


mean(sapply(small_mis_rho6_T50_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T50_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho6_T50_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho6_T50_N1000, function(x) x$ols2_coef))

# Rho = 8 #
load("small_mis_rho8_N50")
load("small_mis_rho8_N100")
load("small_mis_rho8_N200")
load("small_mis_rho8_N500")
load("small_mis_rho8_N1000")

load("small_mis_rho8_T10_N50")
load("small_mis_rho8_T10_N100")
load("small_mis_rho8_T10_N200")
load("small_mis_rho8_T10_N500")
load("small_mis_rho8_T10_N1000")

load("small_mis_rho8_T20_N50")
load("small_mis_rho8_T20_N100")
load("small_mis_rho8_T20_N200")
load("small_mis_rho8_T20_N500")
load("small_mis_rho8_T20_N1000")

load("small_mis_rho8_T30_N50")
load("small_mis_rho8_T30_N100")
load("small_mis_rho8_T30_N200")
load("small_mis_rho8_T30_N500")
load("small_mis_rho8_T30_N1000")

load("small_mis_rho8_T50_N50")
load("small_mis_rho8_T50_N100")
load("small_mis_rho8_T50_N200")
load("small_mis_rho8_T50_N500")
load("small_mis_rho8_T50_N1000")



## T = 5
# coef
mean(sapply(small_mis_rho8_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_N50, function(x) x$ols2_coef))


mean(sapply(small_mis_rho8_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_N100, function(x) x$ols2_coef))



mean(sapply(small_mis_rho8_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_N1000, function(x) x$ols2_coef))


## T = 10
# coef
mean(sapply(small_mis_rho8_T10_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T10_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T10_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T10_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T10_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T10_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T10_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T10_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T10_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T10_N1000, function(x) x$ols2_coef))

## T = 20
# coef
mean(sapply(small_mis_rho8_T20_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T20_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T20_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T20_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T20_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T20_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T20_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T20_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T20_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T20_N1000, function(x) x$ols2_coef))



## T = 30
# coef
mean(sapply(small_mis_rho8_T30_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T30_N50, function(x) x$ols2_coef))


mean(sapply(small_mis_rho8_T30_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T30_N100, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T30_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T30_N200, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T30_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T30_N500, function(x) x$ols2_coef))


mean(sapply(small_mis_rho8_T30_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T30_N1000, function(x) x$ols2_coef))


## T = 50
# coef
mean(sapply(small_mis_rho8_T50_N50, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T50_N50, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T50_N100, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T50_N100, function(x) x$ols2_coef))


mean(sapply(small_mis_rho8_T50_N200, function(x) x$ols1_coef)) # no bias
mean(sapply(small_mis_rho8_T50_N200, function(x) x$ols2_coef))


mean(sapply(small_mis_rho8_T50_N500, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T50_N500, function(x) x$ols2_coef))

mean(sapply(small_mis_rho8_T50_N1000, function(x) x$ols1_coef))
mean(sapply(small_mis_rho8_T50_N1000, function(x) x$ols2_coef))

