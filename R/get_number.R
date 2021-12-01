#' Conversion functions
#'
#' @rdname getnumber
#' @return Modifies current document
#' @export
get_number <- function() {
  replacement <-
    'get_number <- function(x, pattern = "\\d+", type = as.numeric) {
  if (length(x) != 1) stop("\'x\' must be length 1")
  type(stringr::str_extract(x, pattern))
}'

  document_replace("get_number", replacement)
}

#' @rdname getnumber
#' @export
get_number_vec <- function() {
  replacement <-
    'get_number_vec <- function(x, pattern = "\\d+", type = as.numeric) {
  res <- stringr::str_extract(x, pattern)
  lapply(res, type)
}'

  document_replace("get_number_vec", replacement)
}

#' @rdname getnumber
#' @export
get_numbers <- function() {
  replacement <-
    'get_numbers <- function(x, pattern = "\\d+", type = as.numeric) {
  if (length(x) != 1) stop("\'x\' must be length 1")
  type(stringr::str_extract_all(x, pattern)[[1]])
}'

  document_replace("get_numbers", replacement)
}

#' @rdname getnumber
#' @export
get_numbers_vec <- function() {
  replacement <-
    'get_numbers_vec <- function(x, pattern = "\\d+", type = as.numeric) {
  res <- stringr::str_extract_all(x, pattern)
  lapply(res, type)
}'

  document_replace("get_numbers_vec", replacement)
}
