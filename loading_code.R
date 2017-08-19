setwd("~/Dropbox/w2fe/Simulations/results")
load("New_N50_ephi0_homo")

Synth_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_homo, function (x) x$ols_coef), na.rm = T))

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50


load("New_N100_ephi0_homo")
Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_homo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100


load("New_N200_ephi0_homo")
Synth_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_200 <- abs(1-mean(sapply(New_N200_ephi0_homo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_200
Synth_wfe_lag.two_coef_200
Pscore_wfe_lag.one_coef_200
Pscore_wfe_lag.two_coef_200
Maha_wfe_lag.one_coef_200
Maha_wfe_lag.two_coef_200
ols_coef_200




load("New_N300_ephi0_homo")
Synth_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_300 <- abs(1-mean(sapply(New_N300_ephi0_homo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_300
Synth_wfe_lag.two_coef_300
Pscore_wfe_lag.one_coef_300
Pscore_wfe_lag.two_coef_300
Maha_wfe_lag.one_coef_300
Maha_wfe_lag.two_coef_300
ols_coef_300

# lag two
plot(1:4,
    c(Synth_wfe_lag.two_coef_50, Synth_wfe_lag.two_coef_100, Synth_wfe_lag.two_coef_200, Synth_wfe_lag.two_coef_300)
, main = "Bias", xlab = "N", ylab = "bias", type = "b", col = "black",
ylim = c(0, .01))
points(1:4,c(Maha_wfe_lag.two_coef_50, 
            Maha_wfe_lag.two_coef_100, Maha_wfe_lag.two_coef_200, Maha_wfe_lag.two_coef_300)
, col = "blue", type = "b")
points(1:4, c(Pscore_wfe_lag.two_coef_50, Pscore_wfe_lag.two_coef_100, 
             Pscore_wfe_lag.two_coef_200, Pscore_wfe_lag.two_coef_300)
, col = "red", type = "b")
points(1:4, c(ols_coef_50, ols_coef_100, 
              ols_coef_200, ols_coef_300)
       , col = "purple", type = "b")

load("New_N50_ephi0_hetereo")
Synth_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_50 <- abs(1-mean(sapply(New_N50_ephi0_hetereo, function (x) x$ols_coef), na.rm = T))

Synth_wfe_lag.one_coef_50
Synth_wfe_lag.two_coef_50
Pscore_wfe_lag.one_coef_50
Pscore_wfe_lag.two_coef_50
Maha_wfe_lag.one_coef_50
Maha_wfe_lag.two_coef_50
ols_coef_50



load("New_N100_ephi0_hetereo")
Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Synth_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Synth_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0_hetereo, function (x) x$ols_coef), na.rm = T))

Synth_wfe_lag.one_coef_100
Synth_wfe_lag.two_coef_100
Pscore_wfe_lag.one_coef_100
Pscore_wfe_lag.two_coef_100
Maha_wfe_lag.one_coef_100
Maha_wfe_lag.two_coef_100
ols_coef_100



# lag one
c(Synth_wfe_lag.one_coef_50, Synth_wfe_lag.one_coef_100, Synth_wfe_lag.one_coef_200, Synth_wfe_lag.one_coef_300)
c(Maha_wfe_lag.one_coef_50, Maha_wfe_lag.one_coef_100, Maha_wfe_lag.one_coef_200, Maha_wfe_lag.one_coef_300)
c(Pscore_wfe_lag.one_coef_50, Pscore_wfe_lag.one_coef_100, Pscore_wfe_lag.one_coef_200, Pscore_wfe_lag.one_coef_300)

c(ols_coef_50, ols_coef_100, ols_coef_200, ols_coef_300)



setwd("~/Dropbox/w2fe/Simulations/results")
load("New_N50_ephi0.5_T20_hetereo")
ols_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                               function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
Maha_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                               function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                               function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                               function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
Maha_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                              function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_50 <- abs(1-mean(sapply(New_N50_ephi0.5_T20_hetereo, 
                                                function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))


load("New_N100_ephi0.5_T20_hetereo")
ols_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                               function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
Maha_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                              function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                                function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                               function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
Maha_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                              function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_100 <- abs(1-mean(sapply(New_N100_ephi0.5_T20_hetereo, 
                                                function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))


load("New_N200_ephi0.5_T20_hetereo")
ols_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, function (x) x$ols_coef), na.rm = T))
Synth_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                                function (x) x$Synth_wfe_lag.one_coef), na.rm = T))
Maha_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                               function (x) x$Maha_wfe_lag.one_coef), na.rm = T))

Pscore_wfe_lag.one_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                                 function (x) x$Pscore_wfe_lag.one_coef), na.rm = T))

Synth_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                                function (x) x$Synth_wfe_lag.two_coef), na.rm = T))
Maha_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                               function (x) x$Maha_wfe_lag.two_coef), na.rm = T))

Pscore_wfe_lag.two_coef_200 <- abs(1-mean(sapply(New_N200_ephi0.5_T20_hetereo, 
                                                 function (x) x$Pscore_wfe_lag.two_coef), na.rm = T))

load("N500_T5_rho8")
ols_N500_T5 <- abs(1-mean(sapply(N500_T5_rho8, function (x) x$x1), na.rm = T))

load("N500_T10_rho8")
ols_N500_T10 <- abs(1-mean(sapply(N500_T10_rho8, function (x) x$x1), na.rm = T))

load("N500_T20_rho8")
ols_N500_T20 <- abs(1-mean(sapply(N500_T20_rho8, function (x) x$x1), na.rm = T))

load("N500_T30_rho8")
ols_N500_T30 <- abs(1-mean(sapply(N500_T30_rho8, function (x) x$x1), na.rm = T))

