#' Make a new crontab by combining current crontab with DayNotis crontab
#' @param file1 current crontab
#' @param file2 DayNotis crontab
#' @param outfile resulting crontab
#' @export
merge_crontabs <- function(file1 = "crontab",
                           file2 = "crontab_DayNotis",
                           outfile = "new_crontab") {

  x <- readr::read_lines(file1)
  y <- readr::read_lines(file2)
  readr::write_lines(c(x, y), path = outfile)

}
