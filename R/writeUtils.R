# Convert yml parameters to text for passing on to 'osascript'

#' Convert a yml parameter to text
#' @param x parameter text
#' @param pre_text pre-text
write_parameter <- function(x, pre_text = NULL) {
  if (is.null(x))
    return(NULL)
  x <- stringr::str_replace_all(x, "'", "")   # remove '
  stringr::str_c(pre_text, '"', x, '"')
}

#' Convert a yml body to text
#' @param x parameter text
#' @export
write_body <- function(x) {
  write_parameter(x)
}

#' Convert a yml title to text
#' @param x parameter text
#' @export
write_title <- function(x) {
  write_parameter(x, " with title ")
}

#' Convert a yml sound to text
#' @param x parameter text
#' @export
write_sound <- function(x) {
  write_parameter(notification_sound(x), " sound name ")
}
