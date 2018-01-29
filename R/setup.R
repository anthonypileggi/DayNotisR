
#' Setup DayNotisR on a MacOSX machine
#' @export
setup <- function() {

  # save the current crontab
  message("Saving current crontab...")
  system("crontab -l > crontab")

  # remove all DayNotis rows from it
  cleanse_crontab()

  # convert yaml schedule to a crontab
  yaml_as_crontab()

  # Combine with existing crontab, ignoring
  merge_crontabs()

  # setup new crontab
  message("Saving new crontab...")
  system("crontab new_crontab")

  # remove extra files
  unlink(c("crontab", "crontab_DayNotis", "new_crontab"))
}