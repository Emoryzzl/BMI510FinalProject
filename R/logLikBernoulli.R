
#' Log-Likelihood Bernoulli
#' @description Calculates the probability \( p \) that maximizes the log-likelihood for a given vector of binary data.
#' @param data A vector of 0s and 1s.
#' @return A numeric value representing the probability \( p \) that maximizes the log-likelihood.
#' @export


logLikBernoulli <- function(data) {
  p_vals <- seq(0, 1, by=0.001)
  ll_vals <- sapply(p_vals, function(p) sum(data * log(p) + (1 - data) * log(1 - p)))
  p_best <- p_vals[which.max(ll_vals)]
  return(p_best)
}


