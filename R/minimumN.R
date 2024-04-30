
#' Minimum N
#' @name minimumN
#' @description Uses pwr::pwr.t2n.test to determine the minimum sample size needed for a t-test.
#' @param x1 A numeric vector for one sample.
#' @param x2 An optional numeric vector for a second sample.
#' @return A pwr object containing the necessary sample size.
#' @export


library(pwr)

minimumN <- function(x1, x2 = NULL) {
  if (is.null(x2)) {
    # For one sample
    effect_size <- mean(x1) / sd(x1)
    pwr_result <- pwr.t.test(d = effect_size, power = 0.8, sig.level = 0.05, type = "one.sample")
  } else {
    # For two samples
    effect_size <- (mean(x1) - mean(x2)) / sqrt((sd(x1)^2 + sd(x2)^2) / 2)
    pwr_result <- pwr.t2n.test(n1 = length(x1), n2 = length(x2), d = effect_size, power = 0.8, sig.level = 0.05)
  }
  return(pwr_result)
}

