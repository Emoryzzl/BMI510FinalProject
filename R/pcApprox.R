
#' Principal Component Approximation
#' @description Returns an approximation to a dataset based on a given number of principal components.
#' @param x A numeric matrix or dataframe.
#' @param npc The number of principal components to use.
#' @return An approximated dataset.
#' @export

pcApprox <- function(x, npc) {
  pca <- prcomp(x, center=TRUE, scale.=TRUE)
  x_approx <- pca$x[, 1:npc] %*% t(pca$rotation[, 1:npc])
  x_approx <- scale(x_approx, center=-pca$center, scale=1/pca$scale)
  return(x_approx)
}


