
#' Setup DayNotisR on a MacOSX machine
#' @param file name of DayNotis crontab
#' @export
setup <- function(file = "DayNotis_crontab") {

  # get schedule from .yml file
  schedule <- yaml::read_yaml("schedule.yml")

  # create crontab
  crontab <-
    unlist(
      purrr::map(
        toupper(c("saturday", "sunday", "monday", "tuesday", "wednesday", "thursday")),
        function(day) {
          purrr::map_chr(
            names(schedule[[day]]),
            function(time) {
              write_notification_cron(time, schedule[[day]][[time]])
            })
        })
      )

  # write crontab to 'DayNotis_crontab'
  readr::write_lines(crontab, path = file)
}