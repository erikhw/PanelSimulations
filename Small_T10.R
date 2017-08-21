options(digits=4)
# clean slate
rm(list=ls())
# library(devtools)
# install_github("insongkim/wfe", ref = "new_branch")
# load packages
pkg <- c("wfe", "ggplot2", "plm", "pforeach", "matrixStats")
lapply(pkg, require, character.only = TRUE)
setwd("/home/haixiaow/Simulate/Simulations/results")


sim_wfe2 <- function (N = 100, Time = 20, lag.one = 4, lag.two = 6,
                      lead = 0,
                      rho_1 = .9, rho_t_1 = .9, rho_tt_1 = .2, 
                      rho_x = .4, rho_x2 = 0, lagTreOutc = .2, 
                      beta = 1, beta_x = .2, beta_x2 = 0, 
                      phi = .3, rho_t_2 = .3, ephi = .5,
                      rho_2 = .3, M = 1, hetereo = T,
                      x_fe = .3,
                      ITER = 500) {
  y <- matrix(NA, ncol = N, nrow = Time)
  eps <- matrix(NA, ncol = N, nrow = Time)
  treat <- matrix(NA, ncol = N, nrow = Time)
  y.lagged <- matrix(NA, ncol = N, nrow = Time)
  treat.lagged <- matrix(NA, ncol = N, nrow = Time)
  
  
  x <- matrix(rep(NA, N*Time), ncol = N)
  for (i in 1:N) {
    x[1, i] <- rnorm(1, 0.5, 1) + x_fe*gammat[1] + x_fe*alphai[i]
    for(t in 2:Time){
      x[t, i] <- phi*x[t-1, i] + rnorm(1, 0.5, 1) + x_fe*gammat[t] + x_fe*alphai[i]
    }
    
  }
  
  x2 <- matrix(rep(NA, N*Time), ncol = N)
  for (i in 1:N) {
    x2[1, i] <- rnorm(1, 0.5, 1) + gammat[1] + alphai[i]
    for(t in 2:Time){
      x2[t, i] <- phi*x2[t-1, i] + rnorm(1, 0.5, 1) + gammat[t] + alphai[i]
    }
    
  }
  
  for (i in 1:N) {
    y.lagged[1, i] <- rnorm(1) + alphai[i] + gammat[1]
    treat.lagged[1,i] <- rbinom(1,1,exp(rho_x*x[1,i] + rho_x2*x2[1,i] + alphai[i] + gammat[1])/(1+exp(rho_x*x[1,i] + rho_x2*x2[1,i] + alphai[i] + gammat[1])))
    # think about commenting out treat.error
    # treat.error <- -4 #rnorm(1,-4)
    prob <- exp(rho_t_1*y.lagged[1,i] + alphai[i] + rho_tt_1*treat.lagged[1,i] + rho_x*x[1,i] + rho_x2*x2[1,i] + gammat[1])/
      (1+exp(rho_t_1*y.lagged[1,i] + alphai[i] + rho_tt_1*treat.lagged[1,i] + rho_x*x[1,i] + rho_x2*x2[1,i] + gammat[1]))
    treat[1,i] <- rbinom(1,1, prob/2)
    eps[1, i] <- rnorm(1, 0, 6)
    y[1,i] <- rho_1*y.lagged[1,i] + alphai[i] + gammat[1] + 
      beta*treat[1,i] + lagTreOutc*treat.lagged[1,i] + beta_x*x[1,i] + beta_x2*x2[1,i] +
      eps[1,i]
    
    for (t in 2:Time) {
      # treat.error <- -4 #rnorm(1,-4)
      prob <- exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] +gammat[t])/
        (1+exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] + gammat[t]))
      treat[t,i] <- rbinom(1,1, prob/2)
      treat.lagged[t,i] <- treat[t-1,i]
      
      if(hetereo == T) {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = runif(1, 3, 6))
      } else {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = 6)
      }
      
      # truth:
      y[t, i] <- rho_1*y[t-1, i] + beta*treat[t,i] + lagTreOutc*treat[t-1,i] + beta_x*x[t,i] + beta_x2*x2[t,i] + 
        alphai[i] + gammat[t] + eps[t, i] # the current period
      
      y.lagged[t,i] <- y[t-1,i]
    }
    
  }
  y.vec <- c(y)
  y.lagged.vec <- c(y.lagged)
  treat.vec <- c(treat)
  treat.lagged.vec <- c(treat.lagged)
  x.vec <- c(x)
  #y2.vec <- c(y2)
  ## generate unit and time index
  unit.index <- rep(1:N, each = Time)
  time.index <- rep(1:Time, N)
  # Data.str <- as.data.frame(cbind(y.vec, treat.vec, unit.index, x1.vec, x2.vec))
  # colnames(Data.str) <- c("y", "tr", "strata.id", "x1", "x2")
  Data.obs <- as.data.frame(cbind(time.index, unit.index, y.vec, y.lagged.vec,
                                  treat.vec, treat.lagged.vec, x.vec))
  colnames(Data.obs) <- c("time", "unit", "y", "y_l1", "treat", "treat_l1", "x")
  # ##### L = 4
  # ### Correct Models:
  # ## matched sets
  # cat("\n ----------------------- \n")
  # cat("Matches_Maha_lag.one \n")
  # cat("\n ----------------------- \n")
  # Matches_Maha_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
  #                                             unit.id = "unit",
  #                                             treatment = "treat", 
  #                                             formula = y~treat + x, 
  #                                             method = "Maha",
  #                                             qoi = "ate", M = M,
  #                                             data = Data.obs), 
  #                                  error = function(err) NA)
  # 
  # cat("\n ----------------------- \n")
  # cat("Matches_Pscore_lag.one \n")
  # cat("\n ----------------------- \n")
  # 
  # Matches_Pscore_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
  #                                               unit.id = "unit",
  #                                               treatment = "treat", formula = y ~ treat + x, 
  #                                               method = "Pscore",
  #                                               qoi = "ate", M = M,
  #                                               data = Data.obs),
  #                                    error = function(err) NA)
  # 
  # cat("\n ----------------------- \n")
  # cat("Matches_Synth_lag.one \n")
  # cat("\n ----------------------- \n")
  # Matches_Synth_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
  #                                              unit.id = "unit",
  #                                              treatment = "treat", formula = y ~ treat + x, 
  #                                              method = "Synth",
  #                                              qoi = "ate", 
  #                                              data = Data.obs),
  #                                   error = function(err) NA)
  # 
  # 
  # cat("\n ----------------------- \n")
  # cat("Synth_wfe_lag.one \n")
  # cat("\n ----------------------- \n")
  # 
  # ### PanelEstimate ###
  # Synth_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, 
  #                                                  inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                  matched_sets = Matches_Synth_lag.one),
  #                               error = function(err) NA)
  # 
  # tryCatch(if(t(colQuantiles(Synth_wfe_lag.one$boots,
  #                            probs = c((1-Synth_wfe_lag.one$CI)/2, Synth_wfe_lag.one$CI+(1-Synth_wfe_lag.one$CI)/2), 
  #                            na.rm = T, drop = FALSE))[1] < 1 & t(colQuantiles(Synth_wfe_lag.one$boots,
  #                                                                              probs = c((1-Synth_wfe_lag.one$CI)/2, Synth_wfe_lag.one$CI+(1-Synth_wfe_lag.one$CI)/2), 
  #                                                                              na.rm = T, drop = FALSE))[2] > 1) {
  #   coverage_Synth_wfe_lag.one <- 1
  # } else {
  #   coverage_Synth_wfe_lag.one <- 0
  # }, error = function(err) NA)
  # 
  # 
  # 
  # cat("\n ----------------------- \n")
  # cat("Maha_wfe_lag.one \n")
  # cat("\n ----------------------- \n")
  # 
  # Maha_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                 matched_sets = Matches_Maha_lag.one),
  #                              error = function(err) NA)
  # tryCatch(if(t(colQuantiles(Maha_wfe_lag.one$boots,
  #                            probs = c((1-Maha_wfe_lag.one$CI)/2, Maha_wfe_lag.one$CI+(1-Maha_wfe_lag.one$CI)/2), 
  #                            na.rm = T, drop = FALSE))[1] < 1 & t(colQuantiles(Maha_wfe_lag.one$boots,
  #                                                                              probs = c((1-Maha_wfe_lag.one$CI)/2, Maha_wfe_lag.one$CI+(1-Maha_wfe_lag.one$CI)/2), 
  #                                                                              na.rm = T, drop = FALSE))[2] > 1) {
  #   coverage_Maha_wfe_lag.one <- 1
  # } else {
  #   coverage_Maha_wfe_lag.one <- 0
  # }, error = function(err) NA)
  # 
  # 
  # 
  # cat("\n ----------------------- \n")
  # cat("Pscore_wfe_lag.one \n")
  # cat("\n ----------------------- \n")
  # 
  # Pscore_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, 
  #                                                   inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                   matched_sets = Matches_Pscore_lag.one),
  #                                error = function(err) NA)
  # 
  # 
  # tryCatch(if(t(colQuantiles(Pscore_wfe_lag.one$boots,
  #                            probs = c((1-Pscore_wfe_lag.one$CI)/2, Pscore_wfe_lag.one$CI+(1-Pscore_wfe_lag.one$CI)/2), 
  #                            na.rm = T, drop = FALSE))[1] < 1 & t(colQuantiles(Pscore_wfe_lag.one$boots,
  #                                                                              probs = c((1-Pscore_wfe_lag.one$CI)/2, Pscore_wfe_lag.one$CI+(1-Pscore_wfe_lag.one$CI)/2), 
  #                                                                              na.rm = T, drop = FALSE))[2] > 1) {
  #   coverage_Pscore_wfe_lag.one <- 1
  # } else {
  #   coverage_Pscore_wfe_lag.one <- 0
  # }, error = function(err) NA)
  # 
  
  # ##### L = 6
  # ### Correct Models:
  # ## matched sets
  # 
  # cat("\n ----------------------- \n")
  # cat("Matches_Maha_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # Matches_Maha_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
  #                                             unit.id = "unit",
  #                                             treatment = "treat", 
  #                                             formula = y~treat + x, 
  #                                             method = "Maha",
  #                                             qoi = "ate", M = M,
  #                                             data = Data.obs), 
  #                                  error = function(err) NA)
  # 
  # cat("\n ----------------------- \n")
  # cat("Matches_Pscore_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # 
  # Matches_Pscore_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
  #                                               unit.id = "unit",
  #                                               treatment = "treat", formula = y ~ treat + x, 
  #                                               method = "Pscore",
  #                                               qoi = "ate", M = M,
  #                                               data = Data.obs),
  #                                    error = function(err) NA)
  # 
  # cat("\n ----------------------- \n")
  # cat("Matches_Synth_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # Matches_Synth_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
  #                                              unit.id = "unit",
  #                                              treatment = "treat", formula = y ~ treat + x, 
  #                                              method = "Synth",
  #                                              qoi = "ate", 
  #                                              data = Data.obs),
  #                                   error = function(err) NA)
  # 
  # 
  # ### PanelEstimate ###
  # 
  # cat("\n ----------------------- \n")
  # cat("Synth_wfe_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # Synth_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, 
  #                                                  inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                  matched_sets = Matches_Synth_lag.two),
  #                               error = function(err) NA)
  # 
  # 
  # cat("\n ----------------------- \n")
  # cat("Maha_wfe_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # Maha_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                 matched_sets = Matches_Maha_lag.two),
  #                              error = function(err) NA)
  # 
  # cat("\n ----------------------- \n")
  # cat("Pscore_wfe_lag.two \n")
  # cat("\n ----------------------- \n")
  # 
  # Pscore_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, 
  #                                                   inference = "bootstrap", ITER = ITER, CI = .9,
  #                                                   matched_sets = Matches_Pscore_lag.two),
  #                                error = function(err) NA)
  # 
  # 
  cat("\n ----------------------- \n")
  cat("ols \n")
  cat("\n ----------------------- \n")
  if(rho_tt_1 == 0 & lagTreOutc == 0) {
    ols1 <- tryCatch(lm(y ~ treat + y_l1 + x, data = Data.obs), error = function(err) NA)
  } else {
    ols1 <- tryCatch(lm(y ~ treat + y_l1 + x + treat_l1, data = Data.obs), error = function(err) NA)
  }
  
  
  if(rho_tt_1 == 0 & lagTreOutc == 0) {
    ols2 <- tryCatch(plm(y~treat + y_l1 + x,
                        index = c("unit","time"), model = "within",
                        effect = "twoways",
                        data = Data.obs), error = function(err) NA)
  } else {
    ols2 <- tryCatch(plm(y~treat + y_l1 + treat_l1 + x,
                        index = c("unit","time"), model = "within",
                        effect = "twoways",
                        data = Data.obs), error = function(err) NA)
  }
  
  
  
  cat("\n ----------------------- \n")
  cat("summarizing stuff \n")
  cat("\n ----------------------- \n")
  
  # Synth_wfe_lag.one_se  <- tryCatch(sd(Synth_wfe_lag.one$boots, na.rm = T), error = function(err) NA)
  # Synth_wfe_lag.one_coef  <- tryCatch(Synth_wfe_lag.one$o.coef, error = function(err) NA)
  # 
  # Maha_wfe_lag.one_se  <- tryCatch(sd(Maha_wfe_lag.one$boots, na.rm = T), error = function(err) NA)
  # Maha_wfe_lag.one_coef  <- tryCatch(Maha_wfe_lag.one$o.coef, error = function(err) NA)
  # 
  # Pscore_wfe_lag.one_se  <- tryCatch(sd(Pscore_wfe_lag.one$boots, na.rm = T), error = function(err) NA)
  # Pscore_wfe_lag.one_coef  <- tryCatch(Pscore_wfe_lag.one$o.coef, error = function(err) NA)
  # 
  # Synth_wfe_lag.two_se  <- tryCatch(Synth_wfe_lag.two$se, error = function(err) NA)
  # Synth_wfe_lag.two_coef  <- tryCatch(Synth_wfe_lag.two$coefficients[1], error = function(err) NA)
  # 
  # Maha_wfe_lag.two_se  <- tryCatch(Maha_wfe_lag.two$se, error = function(err) NA)
  # Maha_wfe_lag.two_coef  <- tryCatch(Maha_wfe_lag.two$coefficients[1], error = function(err) NA)
  # 
  # Pscore_wfe_lag.two_se  <- tryCatch(Pscore_wfe_lag.two$se, error = function(err) NA)
  # Pscore_wfe_lag.two_coef  <- tryCatch(Pscore_wfe_lag.two$coefficients[1], error = function(err) NA)
  # 
  ols1_coef  <- tryCatch(ols1$coefficients["treat"], error = function(err) NA)
  ols1_se  <- tryCatch(summary(ols1)[[4]][2, 2], error = function(err) NA)
  tryCatch(if(ols1_coef - ols1_se * qnorm(.95) < 1 & ols1_coef + ols1_se * qnorm(.95) > 1) {
    coverage_ols1 <- 1
  } else {
    coverage_ols1 <- 0
  }, error = function(err) NA)
  
  
  ols2_coef  <- tryCatch(ols2$coefficients[1], error = function(err) NA)
  ols2_se  <- tryCatch(sqrt(ols2$vcov["treat", "treat"]), error = function(err) NA)
  tryCatch(if(ols2_coef - ols2_se * qnorm(.95) < 1 & ols2_coef + ols2_se * qnorm(.95) > 1) {
    coverage_ols2 <- 1
  } else {
    coverage_ols2 <- 0
  }, error = function(err) NA)
  
  return(list(# "Synth_wfe_lag.one_se" = Synth_wfe_lag.one_se,
              # "Synth_wfe_lag.one_coef" = Synth_wfe_lag.one_coef,
              # "Synth_wfe_lag.one_coverage" = coverage_Synth_wfe_lag.one,
              
              # "Maha_wfe_lag.one_se" = Maha_wfe_lag.one_se,
              # "Maha_wfe_lag.one_coef" = Maha_wfe_lag.one_coef,
              # "Maha_wfe_lag.one_coverage" = coverage_Maha_wfe_lag.one,
              
              # "Pscore_wfe_lag.one_se" = Pscore_wfe_lag.one_se,
              # "Pscore_wfe_lag.one_coef" = Pscore_wfe_lag.one_coef,
              # "Pscore_wfe_lag.one_coverage" = coverage_Pscore_wfe_lag.one,
              
              # "Synth_wfe_lag.two_se" = Synth_wfe_lag.two_se,
              # "Synth_wfe_lag.two_coef" = Synth_wfe_lag.two_coef,
              # 
              # "Maha_wfe_lag.two_se" = Maha_wfe_lag.two_se,
              # "Maha_wfe_lag.two_coef" = Maha_wfe_lag.two_coef,
              # 
              # "Pscore_wfe_lag.two_se" = Pscore_wfe_lag.two_se,
              # "Pscore_wfe_lag.two_coef" = Pscore_wfe_lag.two_coef,
              
              "ols1_coef" = ols1_coef,
              "ols1_se" = ols1_se,
              "ols2_coef" = ols2_coef,
              "ols2_se" = ols2_se
              # "ols_coef_mis" = ols_coef_mis,
              # "ols_se_mis" = ols_se_mis,
              # "gmm_d_coef" = gmm_d_coef,
              # "gmm_d_se" = gmm_d_se,
              # "gmm_s_coef" = gmm_s_coef,
              # "gmm_s_se" = gmm_s_se
              # "gmm_d_mis_coef" = gmm_d_mis_coef,
              # "gmm_d_mis_se" = gmm_d_mis_se,
              # "gmm_s_mis_coef" = gmm_s_mis_coef,
              # "gmm_s_mis_se" = gmm_s_mis_se
  ))
  
}


# rho_t_1 = .8; rho_1 = .8
reps <- 3000

### hetereo ###
cat("Now we are doing New_N50_ephi0.5_T10_hetereo \n")

N <- 100; Time <- 10
alphai <- rnorm(N, mean = 6, sd = 6)
gammat <- rnorm(Time, mean = 6, sd = 6)

small_N100 <- pforeach(i = 1:reps,.cores = 19, .seed = 2017)({
  out <- sim_wfe2(N = N, Time = Time, ephi = 0.5, rho_tt_1 = 0, lagTreOutc = 0, hetereo = T)
  list(out)
})
save(small_N100, file = "small_N100")

N <- 200; Time <- 10
alphai <- rnorm(N, mean = 6, sd = 6)
gammat <- rnorm(Time, mean = 6, sd = 6)

small_N200 <- pforeach(i = 1:reps,.cores = 19, .seed = 2017)({
  out <- sim_wfe2(N = N, Time = Time, ephi = 0.5, rho_tt_1 = 0, lagTreOutc = 0, hetereo = T)
  list(out)
})
save(small_N200, file = "small_N200")


N <- 500; Time <- 10
alphai <- rnorm(N, mean = 6, sd = 6)
gammat <- rnorm(Time, mean = 6, sd = 6)

small_N500 <- pforeach(i = 1:reps,.cores = 19, .seed = 2017)({
  out <- sim_wfe2(N = N, Time = Time, ephi = 0.5, rho_tt_1 = 0, lagTreOutc = 0, hetereo = T)
  list(out)
})
save(small_N500, file = "small_N500")

N <- 1000; Time <- 10
alphai <- rnorm(N, mean = 6, sd = 6)
gammat <- rnorm(Time, mean = 6, sd = 6)

small_N1000 <- pforeach(i = 1:reps,.cores = 19, .seed = 2017)({
  out <- sim_wfe2(N = N, Time = Time, ephi = 0.5, rho_tt_1 = 0, lagTreOutc = 0, hetereo = T)
  list(out)
})
save(small_N1000, file = "small_N1000")




