options(digits=4)
# clean slate
rm(list=ls())
# library(devtools)
# install_github("insongkim/wfe", ref = "new_branch")
# load packages
pkg <- c("wfe", "ggplot2", "plm", "pforeach")
lapply(pkg, require, character.only = TRUE)
setwd("/home/haixiaow/Simulate/Simulations/results")

## FEs ##
set.seed(123)
alphai <- rnorm(n = 10000, mean = 0, sd = 6)
gammat <- rnorm(n = 200, mean = 0, sd = 1)

phi = .5
x <- matrix(NA, ncol = length(alphai), nrow = length(gammat))
for (i in 1:length(alphai)) {
  for(t in 2:length(gammat)){
    x[, i][1] <- rnorm(1, 0.5, 1) 
    x[, i][t] <- phi*x[, i][t-1] + rnorm(1, 0.5, 1) 
  }
  
}

x2 <- matrix(NA, ncol = length(alphai), nrow = length(gammat))
for (i in 1:length(alphai)) {
  for(t in 2:length(gammat)){
    x2[, i][1] <- rnorm(1, 0, 1) + gammat[1]
    x2[, i][t] <- phi*x2[, i][t-1] + rnorm(1, 0, 1) + gammat[t] + alphai[i]
  }
  
}


sim_wfe2 <- function (N = 100, Time = 20, lag.one = 4, lag.two = 6,
                      lead = 0,
                      rho_1 = .4, rho_t_1 = .4, rho_tt_1 = .4, 
                      rho_x = .4, rho_x2 = 0, lagTreOutc = .4, 
                      beta = 1, beta_x = .2, beta_x2 = 0, 
                      phi = .5, rho_t_2 = .3, ephi = 0,
                      rho_2 = .3, M = 1, hetereo = T,
                      ITER = 1000) {
  y <- matrix(NA, ncol = N, nrow = Time)
  eps <- matrix(NA, ncol = N, nrow = Time)
  treat <- matrix(NA, ncol = N, nrow = Time)
  y.lagged <- matrix(NA, ncol = N, nrow = Time)
  treat.lagged <- matrix(NA, ncol = N, nrow = Time)
  
  # alphai <- rnorm(N, mean = 1)
  # gammat <- rnorm(Time, mean = 1)
  
  # x <- matrix(rep(NA, N*Time), ncol = N)
  # for (i in 1:N) {
  #   for(t in 2:Time){
  #     x[, i][1] <- rnorm(1, 0.5, 1) + gammat[1]
  #     x[, i][t] <- phi*x[, i][t-1] + rnorm(1, 0.5, 1) + gammat[t] + alphai[i]
  #   }
  #   
  # }
  # 
  # x2 <- matrix(rep(NA, N*Time), ncol = N)
  # for (i in 1:N) {
  #   for(t in 2:Time){
  #     x2[, i][1] <- rnorm(1, 0.8, 1) + gammat[1]
  #     x2[, i][t] <- phi*x[, i][t-1] + rnorm(1, 0.8, 1) + gammat[t] + alphai[i]
  #   }
  #   
  # }
  # 
  for (i in 1:N) {
    y.lagged[1, i] <- rnorm(1) + alphai[i] + gammat[1]
    treat.lagged[1,i] <- rbinom(1,1,exp(rho_x*x[1,i] + rho_x2*x2[1,i] + alphai[i] + gammat[1])/(1+exp(rho_x*x[1,i] + rho_x2*x2[1,i] + alphai[i] + gammat[1])))
    treat.error <- -4
    prob <- exp(rho_t_1*y.lagged[1,i] + alphai[i] + rho_tt_1*treat.lagged[1,i] + rho_x*x[1,i] + rho_x2*x2[1,i] + gammat[1] + treat.error)/
      (1+exp(rho_t_1*y.lagged[1,i] + alphai[i] + rho_tt_1*treat.lagged[1,i] + rho_x*x[1,i] + rho_x2*x2[1,i] + gammat[1] + treat.error))
    treat[1,i] <- rbinom(1,1, prob)
    if (hetereo == T) {
      eps[1, i] <- rnorm(1, 0, runif(1, 1, 2))
    } else {
      eps[1, i] <- rnorm(1, 0, 1)
    }
    
    y[1,i] <-  rho_1*y.lagged[1,i] + alphai[i] + gammat[1] + 
      beta*treat[1,i] + lagTreOutc*treat.lagged[1,i] + beta_x*x[1,i] + beta_x2*x2[1,i] +
   #   runif(1, 0, 1)*treat[1, i]*alphai[i] +
      eps[1,i]
    
    for (t in 2:Time) {
      treat.error <- -4
      prob <- exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] +gammat[t] + treat.error)/
        (1+exp(rho_t_1*y[t-1,i] + alphai[i] + rho_tt_1*treat[t-1,i] + rho_x*x[t,i] + rho_x2*x2[t,i] + gammat[t] + treat.error))
      treat[t,i] <- rbinom(1,1, prob)
      treat.lagged[t,i] <- treat[t-1,i]
      
      if(hetereo == T) {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = runif(1, 1, 2))
      } else {
        eps[t, i] <- ephi*eps[t-1, i] + rnorm(n = 1, mean = 0, sd = 1)
      }
      
      # truth:
      y[t, i] <- rho_1*y[t-1, i] + beta*treat[t,i] + lagTreOutc*treat[t-1,i] + beta_x*x[t,i] + beta_x2*x2[t,i] + 
        alphai[i] + gammat[t] + 
      #  runif(1, 0, 1)*treat[t, i]*alphai[i] +
        eps[t, i] # the current period
      
      y.lagged[t,i] <- y[t-1,i]
    }
    
  }
  y.vec <- c(y)
  y.lagged.vec <- c(y.lagged)
  treat.vec <- c(treat)
  treat.lagged.vec <- c(treat.lagged)
  x.vec <- c(x[1:Time, 1:N])
  #y2.vec <- c(y2)
  ## generate unit and time index
  unit.index <- rep(1:N, each = Time)
  time.index <- rep(1:Time, N)
  # Data.str <- as.data.frame(cbind(y.vec, treat.vec, unit.index, x1.vec, x2.vec))
  # colnames(Data.str) <- c("y", "tr", "strata.id", "x1", "x2")
  Data.obs <- as.data.frame(cbind(time.index, unit.index, y.vec, y.lagged.vec,
                                  treat.vec, treat.lagged.vec, x.vec))
  colnames(Data.obs) <- c("time", "unit", "y", "y_l1", "treat", "treat_l1", "x")
  
  ols1 <- tryCatch(plm(y~treat + y_l1 + x, 
                       index = c("unit","time"), model = "within", 
                       effect = "twoways",
                       data = Data.obs), error = function(err) NA)
  
  ols1_coef  <- tryCatch(ols1$coefficients[1], error = function(err) NA)
  ols1_se  <- tryCatch(sqrt(ols1$vcov["treat", "treat"]), error = function(err) NA)
  
  ols2 <- tryCatch(plm(y~treat + treat_l1 + y_l1 + x, 
                       index = c("unit","time"), model = "within", 
                       effect = "twoways",
                       data = Data.obs), error = function(err) NA)
  
  ols2_coef  <- tryCatch(ols2$coefficients[1], error = function(err) NA)
  ols2_se  <- tryCatch(sqrt(ols2$vcov["treat", "treat"]), error = function(err) NA)
  
  return(list("ols1_coef" = ols1_coef,
              "ols1_se" = ols1_se,
              "ols2_coef" = ols2_coef,
              "ols2_se" = ols2_se,
              "prop" = mean(tapply(Data.obs$treat, Data.obs$unit, mean)),
              "RSQ" = summary(ols1)[12][[1]][1]
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


reps <- 2000
### hetereo ###
cat("Now we are doing New_N50_ephi0.5_T10_hetereo \n")

## T = 5
small_rho6_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 5, ephi = 0.5, rho_1 = .6, rho_t_1 = .6, 
                  rho_tt_1 = 0, lagTreOutc = 0,
                  hetereo = T)
  list(out)
})
save(small_rho6_N50, file = "small_rho6_N50")


small_rho6_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 5, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_N100, file = "small_rho6_N100")


small_rho6_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 5,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_N200, file = "small_rho6_N200")

small_rho6_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 5, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_N500, file = "small_rho6_N500")

small_rho6_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 5, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_N1000, file = "small_rho6_N1000")

## T = 10
small_rho6_T10_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 10, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T10_N50, file = "small_rho6_T10_N50")

small_rho6_T10_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 10, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T10_N100, file = "small_rho6_T10_N100")


small_rho6_T10_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 10,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T10_N200, file = "small_rho6_T10_N200")



small_rho6_T10_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 10, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T10_N500, file = "small_rho6_T10_N500")


small_rho6_T10_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 10, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T10_N1000, file = "small_rho6_T10_N1000")

### T = 20 ### 
small_rho6_T20_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 20, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T20_N50, file = "small_rho6_T20_N50")

small_rho6_T20_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 20, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T20_N100, file = "small_rho6_T20_N100")


small_rho6_T20_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 20,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T20_N200, file = "small_rho6_T20_N200")



small_rho6_T20_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 20, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T20_N500, file = "small_rho6_T20_N500")


small_rho6_T20_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 20, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T20_N1000, file = "small_rho6_T20_N1000")

### T = 30 ### 
small_rho6_T30_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 30, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T30_N50, file = "small_rho6_T30_N50")

small_rho6_T30_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 30, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T30_N100, file = "small_rho6_T30_N100")


small_rho6_T30_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 30,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T30_N200, file = "small_rho6_T30_N200")



small_rho6_T30_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 30, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T30_N500, file = "small_rho6_T30_N500")


small_rho6_T30_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 30, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T30_N1000, file = "small_rho6_T30_N1000")

### T = 50 ### 
small_rho6_T50_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 50, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T50_N50, file = "small_rho6_T50_N50")

small_rho6_T50_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 50, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T50_N100, file = "small_rho6_T50_N100")


small_rho6_T50_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 50,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T50_N200, file = "small_rho6_T50_N200")



small_rho6_T50_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 50, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T50_N500, file = "small_rho6_T50_N500")


small_rho6_T50_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 50, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T50_N1000, file = "small_rho6_T50_N1000")

### T = 100 ### 
small_rho6_T100_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 100, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T100_N50, file = "small_rho6_T100_N50")

small_rho6_T100_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 100, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T100_N100, file = "small_rho6_T100_N100")


small_rho6_T100_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 100,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T100_N200, file = "small_rho6_T100_N200")



small_rho6_T100_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 100, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T100_N500, file = "small_rho6_T100_N500")


small_rho6_T100_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 100, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T100_N1000, file = "small_rho6_T100_N1000")


### T = 200 ### 
small_rho6_T200_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 200, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T200_N50, file = "small_rho6_T200_N50")

small_rho6_T200_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 200, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T200_N100, file = "small_rho6_T200_N100")


small_rho6_T200_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 200,
                  
                  
                  ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho6_T200_N200, file = "small_rho6_T200_N200")



small_rho6_T200_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 200, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T200_N500, file = "small_rho6_T200_N500")


small_rho6_T200_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 200, ephi = .5, rho_1 = .6, rho_t_1 = .6,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho6_T200_N1000, file = "small_rho6_T200_N1000")


### rho = .8 ###

## T = 5
small_rho8_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 5, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_N50, file = "small_rho8_N50")


small_rho8_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 5, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_N100, file = "small_rho8_N100")


small_rho8_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 5,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_N200, file = "small_rho8_N200")

small_rho8_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 5, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_N500, file = "small_rho8_N500")

small_rho8_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 5, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_N1000, file = "small_rho8_N1000")

## T = 10
small_rho8_T10_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 10, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T10_N50, file = "small_rho8_T10_N50")

small_rho8_T10_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 10, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T10_N100, file = "small_rho8_T10_N100")


small_rho8_T10_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 10,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T10_N200, file = "small_rho8_T10_N200")



small_rho8_T10_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 10, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T10_N500, file = "small_rho8_T10_N500")


small_rho8_T10_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 10, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T10_N1000, file = "small_rho8_T10_N1000")

### T = 20 ### 
small_rho8_T20_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 20, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T20_N50, file = "small_rho8_T20_N50")

small_rho8_T20_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 20, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T20_N100, file = "small_rho8_T20_N100")


small_rho8_T20_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 20,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T20_N200, file = "small_rho8_T20_N200")



small_rho8_T20_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 20, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T20_N500, file = "small_rho8_T20_N500")


small_rho8_T20_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 20, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T20_N1000, file = "small_rho8_T20_N1000")

### T = 30 ### 
small_rho8_T30_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 30, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T30_N50, file = "small_rho8_T30_N50")

small_rho8_T30_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 30, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T30_N100, file = "small_rho8_T30_N100")


small_rho8_T30_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 30,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T30_N200, file = "small_rho8_T30_N200")



small_rho8_T30_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 30, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T30_N500, file = "small_rho8_T30_N500")


small_rho8_T30_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 30, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T30_N1000, file = "small_rho8_T30_N1000")

### T = 50 ### 
small_rho8_T50_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 50, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T50_N50, file = "small_rho8_T50_N50")

small_rho8_T50_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 50, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T50_N100, file = "small_rho8_T50_N100")


small_rho8_T50_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 50,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T50_N200, file = "small_rho8_T50_N200")



small_rho8_T50_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 50, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T50_N500, file = "small_rho8_T50_N500")


small_rho8_T50_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 50, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T50_N1000, file = "small_rho8_T50_N1000")



### T = 100 ### 
small_rho8_T100_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 100, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T100_N50, file = "small_rho8_T100_N50")

small_rho8_T100_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 100, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T100_N100, file = "small_rho8_T100_N100")


small_rho8_T100_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 100,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T100_N200, file = "small_rho8_T100_N200")



small_rho8_T100_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 100, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T100_N500, file = "small_rho8_T100_N500")


small_rho8_T100_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 100, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T100_N1000, file = "small_rho8_T100_N1000")


### T = 200 ### 
small_rho8_T200_N50 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 50, Time = 200, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T200_N50, file = "small_rho8_T200_N50")

small_rho8_T200_N100 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 100, Time = 200, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T200_N100, file = "small_rho8_T200_N100")


small_rho8_T200_N200 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 200, Time = 200,
                  
                  
                  ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,   hetereo = T)
  list(out)
})
save(small_rho8_T200_N200, file = "small_rho8_T200_N200")



small_rho8_T200_N500 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 500, Time = 200, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0, 
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T200_N500, file = "small_rho8_T200_N500")


small_rho8_T200_N1000 <- pforeach(i = 1:reps,.cores = 20, .seed = 2018)({
  out <- sim_wfe2(N = 1000, Time = 200, ephi = .5, rho_1 = .8, rho_t_1 = .8,rho_tt_1 = 0, lagTreOutc = 0,  
                  
                  
                  hetereo = T)
  list(out)
})
save(small_rho8_T200_N1000, file = "small_rho8_T200_N1000")
