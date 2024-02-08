#' Print current timestamp for logging
#'
#' @return Current timestamp as character.
#' @export
date_log <- function() {
  as.character(paste0("[", as.POSIXct(Sys.time()), "]"))
}

#' Create directory
#'
#' @param d Directory to create.
#'
#' @export
mkdir <- function(d) {
  if (!dir.exists(d)) {
    dir.create(d, recursive = TRUE)
  }
}

# copy recursively
cpdir <- function(from, to) {
  mkdir(to)
  file.copy(from = from, to = to, recursive = TRUE)
}

#' Order Mixed Vectors
#'
#' See https://stackoverflow.com/a/61647053/2169986
#' @param x Vector to be sorted
#'
#' @export
mixedrank <- function(x) {
  if (length(x) == 0) {
    return(x)
  }
  order(gtools::mixedorder(x))
}
