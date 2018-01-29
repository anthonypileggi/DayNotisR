#' Cleanse a crontab file of the DayNotis entries
#' @param file file name (character/scalar)
#' @param new_file name of new crontab
#' @export
cleanse_crontab <- function(file = "crontab") {
  x <- readr::read_lines(file)
  x <- x[!stringr::str_detect(x, "# added with DayNotis")]
  readr::write_lines(x, path = file)
}