#' @title DaysTil
#'
#' @description This function calculates the number of days that have passed since the beginning of the current year.
#'
#' @param None
#' @return Number of days since the start of the year
#' @examples
#' days_since_start_of_year()
#' @export

days_since_start_of_year <- function() {
  today <- as.POSIXlt(Sys.Date())
  days_elapsed <- as.numeric(format(today, "%j"))
  return(days_elapsed)
}

days_passed <- days_since_start_of_year()
cat("Number of days since the beginning of the year:", days_passed, "\n")
