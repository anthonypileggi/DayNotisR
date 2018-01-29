
#' Write a single crontab line for creating a notification
#' @param time time of day (HHMM)
#' @param event event details (body, title, level)
#' @export
write_notification_cron <- function(time, event) {
  stringr::str_c(
    stringr::str_sub(time, 3, 4),
    " ",
    stringr::str_sub(time, 1, 2),
    " * * * ",
    # TODO: stick in weekday value here
    "/usr/bin/osascript -e 'display notification ",
    write_body(event$body),
    write_title(event$title),
    write_sound(event$level),
    " # added with DayNotis",
    "'"
    )
}