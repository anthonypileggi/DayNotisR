#' Return the MacOSX notificaiton sound for the given the priority level
#' @param level priority (character/scalar)
#' @export
notification_sound <- function(level) {
  sound <-
    switch(
      level,
      critical = "Glass",
      urgent = "Hero",
      notice = "Blow"
      )
  ifelse(is.null(sound), "Purr", sound)
}
