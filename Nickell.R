options(digits=4)
# clean slate
rm(list=ls())
# library(devtools)
# install_github("insongkim/wfe", ref = "new_branch")
# load packages
pkg <- c("wfe", "ggplot2", "plm", "pforeach")
lapply(pkg, require, character.only = TRUE)
setwd("/home/haixiaow/Simulate/Simulations/results")


twowayNickell <- function (N = 100, Time = 20, 
                      rho_1 = .8) {
  y <- matrix(NA, ncol = N, nrow = Time)
  y.lagged <- matrix(NA, ncol = N, nrow = Time)
  beta <- 1
  x1 <- matrix(rnorm(N*Time, 0.5,1), ncol=N)
  
  alphai <- rnorm(N, mean = 2*apply(x1, 2, mean))
  gammat <- rnorm(Time, mean = 2*apply(x1, 2, mean))
  
  
  for (i in 1:N) {
    y.lagged[1, i] <- rnorm(mean = .5, n = 1) + rnorm(mean = .5, n = 1) + 
      rnorm(mean = .5, n = 1)
   
    y[1,i] <- rho_1*y.lagged[1,i] + alphai[i] + gammat[1] +  
      beta*x1[1,i] + rnorm(1)
    
    for (t in 2:Time) {
      # truth:
      y[t, i] <- rho_1*y[t-1, i] + beta*x1[t,i] + alphai[i] + gammat[t] +
        rnorm(1) # the current period
      
      y.lagged[t,i] <- y[t-1,i]
    }
    
  }
  y.vec <- c(y)
  y.lagged.vec <- c(y.lagged)
  x1.vec <- c(x1)
  #y2.vec <- c(y2)
  ## generate unit and time index
  unit.index <- rep(1:N, each = Time)
  time.index <- rep(1:Time, N)
  # Data.str <- as.data.frame(cbind(y.vec, treat.vec, unit.index, x1.vec, x2.vec))
  # colnames(Data.str) <- c("y", "tr", "strata.id", "x1", "x2")
  Data.obs <- as.data.frame(cbind(time.index, unit.index, y.vec, y.lagged.vec,
                                  x1.vec))
  colnames(Data.obs) <- c("time", "unit", "y", "y_l1", "x1")
  ols1 <- plm(y~y_l1 + x1,
             index = c("unit","time"), model = "within", 
             effect = "twoways",
             data = Data.obs)
  ols2 <- plm(y~ x1,
             index = c("unit","time"), model = "within", 
             effect = "twoways",
             data = Data.obs)
  return(list("ldv" = ols1$coefficients["y_l1"], "x1" = ols1$coefficients["x1"],
              "x1_2" = ols2$coefficients["x1"]))
}

reps <- 1000
N50_T5_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 50, Time = 5)
  list(out)
})
save(N50_T5_rho8, file = "N50_T5_rho8")

N100_T5_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 100, Time = 5)
  list(out)
})
save(N100_T5_rho8, file = "N100_T5_rho8")

N500_T5_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 500, Time = 5)
  list(out)
})
save(N500_T5_rho8, file = "N500_T5_rho8")

N50_T10_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 50, Time = 10)
  list(out)
})
save(N50_T10_rho8, file = "N50_T10_rho8")

N100_T10_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 100, Time = 10)
  list(out)
})
save(N100_T10_rho8, file = "N100_T10_rho8")

N500_T10_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 500, Time = 10)
  list(out)
})
save(N500_T10_rho8, file = "N500_T10_rho8")

N50_T20_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 50, Time = 20)
  list(out)
})
save(N50_T20_rho8, file = "N50_T20_rho8")

N100_T20_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 100, Time = 20)
  list(out)
})
save(N100_T20_rho8, file = "N100_T20_rho8")

N500_T20_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 500, Time = 20)
  list(out)
})
save(N500_T20_rho8, file = "N500_T20_rho8")

N50_T30_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 50, Time = 30)
  list(out)
})
save(N50_T30_rho8, file = "N50_T30_rho8")

N100_T30_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 100, Time = 30)
  list(out)
})
save(N100_T30_rho8, file = "N100_T30_rho8")

N500_T30_rho8 <- pforeach(i = 1:reps,.cores = 19, .seed = 8888)({
  out <- twowayNickell(N = 500, Time = 30)
  list(out)
})
save(N500_T30_rho8, file = "N500_T30_rho8")

