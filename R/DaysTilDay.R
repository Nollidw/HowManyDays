#' @title DaysTil
#'
#' @description This function calculates the number of days until a specified future date from the current date.
#'
#' @param target_date A character string specifying the target date in "YYYY-MM-DD" format
#' @return The number of days until the specified target date
#' @examples
#' days_until_date("2023-12-31")
#' @export

days_until_date <- function(target_date) {
  current_date <- as.Date(Sys.Date())
  target_date <- as.Date(target_date)

  if (target_date < current_date) {
    stop("Target date should be in the future.")
  }

  days_remaining <- difftime(target_date, current_date, units = "days")
  return(as.integer(days_remaining))
}

# Example
# Calculate days until December 31, 2023
days_until <- days_until_date("2023-12-31")
cat("Number of days until December 31, 2023:", days_until, "days\n")
