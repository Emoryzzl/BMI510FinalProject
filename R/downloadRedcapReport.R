
#' Download RedCap Report
#' @name downloadRedcapReport
#' @description Securely downloads a RedCap report using an API token from the user's .REnviron file.
#' @param redcapTokenName A string representing the name of the API token.
#' @param redcapUrl A string representing the URL for RedCap.
#' @param redcapReportId A string representing the report ID.
#' @return A tibble containing the report data.
#' @export


library(httr)
library(dplyr)

downloadRedcapReport <- function(redcapTokenName, redcapUrl, redcapReportId) {
  token <- Sys.getenv(redcapTokenName)
  formData <- list(
    token = token,
    content = 'report',
    format = 'csv',
    report_id = redcapReportId,
    rawOrLabel = 'raw',
    returnFormat = 'csv'
  )
  response <- httr::POST(redcapUrl, body = formData, encode = "form")
  result <- httr::content(response, as = "parsed", type = "text/csv")
  return(result)
}


