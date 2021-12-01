#' Read file as a matrix
#'
#' @return Modifies current document
#' @export
read_matrix <- function() {

  replacement <-
    'read_matrix <- function(path, sep = "", fill = NA, type = identity) {
  lines <- readLines(path)
  tokens <- strsplit(lines, sep)
  token_lengths <- lengths(tokens)
  res <- matrix(fill, nrow = length(lines), ncol = max(token_lengths))

  for (i in seq_along(lines)) {
    res[i, seq_len(token_lengths[i])] <- type(tokens[[i]])
  }
  res
}'

  document_replace("read_matrix", replacement)
}
