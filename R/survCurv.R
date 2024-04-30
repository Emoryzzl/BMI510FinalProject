
#' Survival Curve
#' @name survCurv
#' @description Calculates and plots a survival curve \( S(t) \) using the survival package.
#' @param status A numerical vector indicating the survival status.
#' @param time A numerical vector indicating the time to event.
#' @return A survival curve plot.
#' @export

library(survival)
library(ggplot2)

survCurv <- function(status, time) {
  surv_obj <- Surv(time, status)
  fit <- survfit(surv_obj ~ 1)
  ggsurvplot(fit)
}


