
#' Make a new crontab by combining current crontab with DayNotis crontab
#' @param file1 current crontab
#' @param file2 DayNotis crontab
#' @export
make_new_crontab <- function(file1 = "crontab", file2 = "DayNotis_crontab") {

  x <- readr::read_lines(file1)
  y <- readr::read_lines(file2)

  readr::write_lines(
    c(
      x[!stringr::str_detect(x, "# added with DayNotis")],
      y
      ),
    path = "new_crontab"
    )
}