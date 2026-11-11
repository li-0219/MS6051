# Q1.i
mle_exp <- function(lambda, n) {
  # Generate exponential random samples
  x <- rexp(n, rate = lambda)
  # Calculate the MLE of lambda
  mle <- 1 / mean(x)
  # Return the MLE
  return(mle)
}

# Q1.ii
set.seed(22305319 + 26325489) 
mle_exp(lambda = 1, n = 10)

# Q1.iii
mle_values <- numeric(1000) 
for (i in 1:1000) {
  mle_values[i] <- mle_exp(lambda = 1, n = 10)
}
mean_mle <- mean(mle_values)                  
var_mle  <- var(mle_values)                 
mse_mle  <- mean((mle_values - 1)^2)

mean_mle
var_mle
mse_mle