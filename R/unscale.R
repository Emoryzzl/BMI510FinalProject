
#' Unscale
#' @description Reverses the scaling effect applied to a numeric vector.
#' @param x A scaled numeric vector.
#' @return A numeric vector with the original values.
#' @export

unscale <- function(x) {
  attr_x <- attributes(x)
  x_orig <- x * attr_x$`scaled:scale` + attr_x$`scaled:center`
  return(x_orig)
}


