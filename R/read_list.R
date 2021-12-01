#' Read file as a list
#'
#' @return Modifies current document
#' @export
read_list <- function() {

  replacement <-
    'read_list <- function(path, sep = "", type = identity) {
  lines <- readLines(path)
  res <- strsplit(lines, sep)
  res <- lapply(res, type)
  res
}'

  document_replace("read_list", replacement)
}
