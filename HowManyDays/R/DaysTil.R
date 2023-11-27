#' @title DaysTil
#
#' @description This function calculates the number of days remaining in the current year.
#'
#' @param None
#' @return Number of days remaining in the year
#' @examples
#' days_left_in_year()
#' @export

days_left_in_year <- function() {
  today <- as.POSIXlt(Sys.Date())
  days_in_year <- ifelse(leap_year(today$year + 1900), 366, 365)
  days_elapsed <- as.numeric(format(today, "%j"))
  days_left <- days_in_year - days_elapsed
  return(days_left)
}

leap_year <- function(year) {
  (year %% 4 == 0 & year %% 100 != 0) | year %% 400 == 0
}

days_remaining <- days_left_in_year()
cat("Number of days remaining in the year:", days_remaining, "\n")
