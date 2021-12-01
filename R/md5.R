#' Setup md5
#'
#' @return Modifies current document
#' @export
md5 <- function() {

  replacement <-
    'md5 <- digest::getVDigest()
md5("g", serialize = FALSE)'

  document_replace("md5", replacement)
}
