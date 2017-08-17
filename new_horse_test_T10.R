options(digits=4)
# clean slate
rm(list=ls())
# library(devtools)
# install_github("insongkim/wfe", ref = "new_branch")
# load packages
pkg <- c("wfe", "ggplot2", "plm", "pforeach")
lapply(pkg, require, character.only = TRUE)
setwd("/home/haixiaow/Simulate/results")

sim_wfe2 <- function (N = 100, Time = 20, lag.one = 4, lag.two = 6,
                      lead = 0,
                      rho_1 = .5, rho_t_1 = .8, rho_tt_1 = .2, 
                      rho_x = .4, rho_x2 = 0, lagTreOutc = .2, 
                      beta = 1, beta_x = .2, beta_x2 = 0, 
                      phi = .75, rho_t_2 = .3, ephi = .5,
                      rho_2 = .3, M = 1, hetereo = T,
                      ITER = 1000) {
  y <- matrix(NA, ncol = N, nrow = Time)
  eps <- matrix(NA, ncol = N, nrow = Time)
  treat <- matrix(NA, ncol = N, nrow = Time)
  y.lagged <- matrix(NA, ncol = N, nrow = Time)
  treat.lagged <- matrix(NA, ncol = N, nrow = Time)
  
  alphai <- rnorm(N, mean = 1)
  gammat <- rnorm(Time, mean = 1)
  
  x <- matrix(rep(NA, N*Time), ncol = N)
  # for (i in 1:N) {
  #   for(t in 2:Time){
  #     x[, i][1] <- rnorm(1, 0.5, 1) + gammat[1]
  #     x[, i][t] <- phi*x[, i][t-1] + rnorm(1, 0.5, 1) + gammat[t] + alphai[i]
  #   }
  #   
  # }
  # 
  for (i in 1:N) {
    x[1, i] <- rnorm(1, 0.5, 1) + gammat[1]
    for(t in 2:Time){
      x[t, i] <- phi*x[t-1, i] + rnorm(1, 0.5, 1) + gammat[t] + alphai[i]
    }
    
  }
  
  x2 <- matrix(rep(NA, N*Time), ncol = N)
  for (i in 1:N) {
    x2[1, i] <- rnorm(1, 0.5, 1) + gammat[1]
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
    eps[1, i] <- rnorm(1)
    y[1,i] <- rho_1*y.lagged[1,i] + alphai[i] + gammat[1] + beta*treat.lagged[1,i] + 
      beta*treat[1,i] + lagTreOutc*treat.lagged[1,i] + beta_x*x[1,i] + beta_x2*x2[1,i] +
      eps[1,i]
    
    for (t in 2:Time) {
      # treat.error <- -4 #rnorm(1,-4)
      prob <- exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] +gammat[t])/
        (1+exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] + gammat[t]))
      treat[t,i] <- rbinom(1,1, prob/2)
      treat.lagged[t,i] <- treat[t-1,i]
      
      if(hetereo == T) {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = runif(1, 0, 1))
      } else {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = 1)
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
  ##### L = 4
  ### Correct Models:
  ## matched sets
  cat("\n ----------------------- \n")
  cat("Matches_Maha_lag.one \n")
  cat("\n ----------------------- \n")
  Matches_Maha_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
                                              unit.id = "unit",
                                              treatment = "treat", 
                                              formula = y~treat + x, 
                                              method = "Maha",
                                              qoi = "ate", M = M,
                                              data = Data.obs), 
                                   error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("Matches_Pscore_lag.one \n")
  cat("\n ----------------------- \n")
  
  Matches_Pscore_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
                                                unit.id = "unit",
                                                treatment = "treat", formula = y ~ treat + x, 
                                                method = "Pscore",
                                                qoi = "ate", M = M,
                                                data = Data.obs),
                                     error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("Matches_Synth_lag.one \n")
  cat("\n ----------------------- \n")
  Matches_Synth_lag.one <- tryCatch(PanelMatch(lag = lag.one, max.lead = lead, time.id = "time", 
                                               unit.id = "unit",
                                               treatment = "treat", formula = y ~ treat + x, 
                                               method = "Synth",
                                               qoi = "ate", 
                                               data = Data.obs),
                                    error = function(err) NA)
  
  
  cat("\n ----------------------- \n")
  cat("Synth_wfe_lag.one \n")
  cat("\n ----------------------- \n")
  
  ### PanelEstimate ###
  Synth_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, 
                                                   inference = "wfe",
                                                   matched_sets = Matches_Synth_lag.one),
                                error = function(err) NA)
  
  
  cat("\n ----------------------- \n")
  cat("Maha_wfe_lag.one \n")
  cat("\n ----------------------- \n")
  
  Maha_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, inference = "wfe",
                                                  matched_sets = Matches_Maha_lag.one),
                               error = function(err) NA)
  
  
  
  cat("\n ----------------------- \n")
  cat("Pscore_wfe_lag.one \n")
  cat("\n ----------------------- \n")
  
  Pscore_wfe_lag.one <- tryCatch(PanelEstimate_tmp2(lead = lead, 
                                                    inference = "wfe",
                                                    matched_sets = Matches_Pscore_lag.one),
                                 error = function(err) NA)
  
  ##### L = 6
  ### Correct Models:
  ## matched sets
  
  cat("\n ----------------------- \n")
  cat("Matches_Maha_lag.two \n")
  cat("\n ----------------------- \n")
  
  Matches_Maha_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
                                              unit.id = "unit",
                                              treatment = "treat", 
                                              formula = y~treat + x, 
                                              method = "Maha",
                                              qoi = "ate", M = M,
                                              data = Data.obs), 
                                   error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("Matches_Pscore_lag.two \n")
  cat("\n ----------------------- \n")
  
  
  Matches_Pscore_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
                                                unit.id = "unit",
                                                treatment = "treat", formula = y ~ treat + x, 
                                                method = "Pscore",
                                                qoi = "ate", M = M,
                                                data = Data.obs),
                                     error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("Matches_Synth_lag.two \n")
  cat("\n ----------------------- \n")
  
  Matches_Synth_lag.two <- tryCatch(PanelMatch(lag = lag.two, max.lead = lead, time.id = "time", 
                                               unit.id = "unit",
                                               treatment = "treat", formula = y ~ treat + x, 
                                               method = "Synth",
                                               qoi = "ate", 
                                               data = Data.obs),
                                    error = function(err) NA)
  
  
  ### PanelEstimate ###
  
  cat("\n ----------------------- \n")
  cat("Synth_wfe_lag.two \n")
  cat("\n ----------------------- \n")
  
  Synth_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, 
                                                   inference = "wfe",
                                                   matched_sets = Matches_Synth_lag.two),
                                error = function(err) NA)
  
  
  cat("\n ----------------------- \n")
  cat("Maha_wfe_lag.two \n")
  cat("\n ----------------------- \n")
  
  Maha_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, inference = "wfe",
                                                  matched_sets = Matches_Maha_lag.two),
                               error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("Pscore_wfe_lag.two \n")
  cat("\n ----------------------- \n")
  
  Pscore_wfe_lag.two <- tryCatch(PanelEstimate_tmp2(lead = lead, 
                                                    inference = "wfe",
                                                    matched_sets = Matches_Pscore_lag.two),
                                 error = function(err) NA)
  
  
  cat("\n ----------------------- \n")
  cat("ols \n")
  cat("\n ----------------------- \n")
  
  ols <- tryCatch(plm(y~treat + treat_l1 + y_l1 + x, 
                      index = c("unit","time"), model = "within", 
                      effect = "twoways",
                      data = Data.obs), error = function(err) NA)
  
  cat("\n ----------------------- \n")
  cat("summarizing stuff \n")
  cat("\n ----------------------- \n")
  
  Synth_wfe_lag.one_se  <- tryCatch(Synth_wfe_lag.one$se, error = function(err) NA)
  Synth_wfe_lag.one_coef  <- tryCatch(Synth_wfe_lag.one$coefficients[1], error = function(err) NA)
  
  Maha_wfe_lag.one_se  <- tryCatch(Maha_wfe_lag.one$se, error = function(err) NA)
  Maha_wfe_lag.one_coef  <- tryCatch(Maha_wfe_lag.one$coefficients[1], error = function(err) NA)
  
  Pscore_wfe_lag.one_se  <- tryCatch(Pscore_wfe_lag.one$se, error = function(err) NA)
  Pscore_wfe_lag.one_coef  <- tryCatch(Pscore_wfe_lag.one$coefficients[1], error = function(err) NA)
  
  Synth_wfe_lag.two_se  <- tryCatch(Synth_wfe_lag.two$se, error = function(err) NA)
  Synth_wfe_lag.two_coef  <- tryCatch(Synth_wfe_lag.two$coefficients[1], error = function(err) NA)
  
  Maha_wfe_lag.two_se  <- tryCatch(Maha_wfe_lag.two$se, error = function(err) NA)
  Maha_wfe_lag.two_coef  <- tryCatch(Maha_wfe_lag.two$coefficients[1], error = function(err) NA)
  
  Pscore_wfe_lag.two_se  <- tryCatch(Pscore_wfe_lag.two$se, error = function(err) NA)
  Pscore_wfe_lag.two_coef  <- tryCatch(Pscore_wfe_lag.two$coefficients[1], error = function(err) NA)
  
  ols_coef  <- tryCatch(ols$coefficients[1], error = function(err) NA)
  ols_se  <- tryCatch(sqrt(ols$vcov["treat", "treat"]), error = function(err) NA)
  
  return(list("Synth_wfe_lag.one_se" = Synth_wfe_lag.one_se,
              "Synth_wfe_lag.one_coef" = Synth_wfe_lag.one_coef,
              
              "Maha_wfe_lag.one_se" = Maha_wfe_lag.one_se,
              "Maha_wfe_lag.one_coef" = Maha_wfe_lag.one_coef,
              
              "Pscore_wfe_lag.one_se" = Pscore_wfe_lag.one_se,
              "Pscore_wfe_lag.one_coef" = Pscore_wfe_lag.one_coef,
              
              "Synth_wfe_lag.two_se" = Synth_wfe_lag.two_se,
              "Synth_wfe_lag.two_coef" = Synth_wfe_lag.two_coef,
              
              "Maha_wfe_lag.two_se" = Maha_wfe_lag.two_se,
              "Maha_wfe_lag.two_coef" = Maha_wfe_lag.two_coef,
              
              "Pscore_wfe_lag.two_se" = Pscore_wfe_lag.two_se,
              "Pscore_wfe_lag.two_coef" = Pscore_wfe_lag.two_coef,
              
              "ols_coef" = ols_coef,
              "ols_se" = ols_se
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


# rho_t_1 = .8; rho_1 = .5
reps <- 1000
cat("Now we are doing New_N50_ephi0_T10_homo \n")
New_N50_ephi0_T10_homo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 50, T = 10, ephi = 0, hetereo = F)
  list(out)
})
save(New_N50_ephi0_T10_homo, file = "New_N50_ephi0_T10_homo")

cat("Now we are doing New_N100_ephi0_T10_homo \n")
New_N100_ephi0_T10_homo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 100, T = 10, ephi = 0, hetereo = F)
  list(out)
})
save(New_N100_ephi0_T10_homo, file = "New_N100_ephi0_T10_homo")

cat("Now we are doing New_N200_ephi0_T10_homo \n")
New_N200_ephi0_T10_homo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 200, T = 10, ephi = 0, hetereo = F)
  list(out)
})
save(New_N200_ephi0_T10_homo, file = "New_N200_ephi0_T10_homo")

cat("Now we are doing New_N300_ephi0_T10_homo \n")
New_N300_ephi0_T10_homo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 300, T = 10, ephi = 0, hetereo = F)
  list(out)
})
save(New_N300_ephi0_T10_homo, file = "New_N300_ephi0_T10_homo")


### hetereo ###
cat("Now we are doing New_N50_ephi0_T10_hetereo \n")
New_N50_ephi0_T10_hetereo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 50, T = 10, ephi = 0, hetereo = T)
  list(out)
})
save(New_N50_ephi0_T10_hetereo, file = "New_N50_ephi0_T10_hetereo")

cat("Now we are doing New_N100_ephi0_T10_hetereo \n")
New_N100_ephi0_T10_hetereo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 100, T = 10, ephi = 0, hetereo = T)
  list(out)
})
save(New_N100_ephi0_T10_hetereo, file = "New_N100_ephi0_T10_hetereo")

cat("Now we are doing New_N200_ephi0_T10_hetereo \n")
New_N200_ephi0_T10_hetereo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 200, T = 10, ephi = 0, hetereo = T)
  list(out)
})
save(New_N200_ephi0_T10_hetereo, file = "New_N200_ephi0_T10_hetereo")


cat("Now we are doing New_N300_ephi0_T10_hetereo \n")
New_N300_ephi0_T10_hetereo <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- sim_wfe2(N = 300, T = 10, ephi = 0, hetereo = T)
  list(out)
})
save(New_N300_ephi0_T10_hetereo, file = "New_N300_ephi0_T10_hetereo")


