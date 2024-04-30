
#' Standardize Names
#' @name standardizeNames
#' @description Standardizes the variable names of a dataset.
#' @param data A tibble.
#' @return A tibble with standardized names.
#' @export

library(dplyr)
library(janitor)

standardizeNames <- function(data) {
  data <- data %>% rename_with(janitor::make_clean_names)
  return(data)
}


