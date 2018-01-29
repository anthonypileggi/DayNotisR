
#' Convert schedule.yml to crontab
#' @export
yaml_as_crontab <- function(file = "config.yml") {

  # get schedule from .yml file
  schedule <- yaml::read_yaml(file)

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
  readr::write_lines(crontab, path = "crontab_DayNotis")
}
