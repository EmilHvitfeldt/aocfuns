#'  functions
#'
#' @rdname connversion
#' @return Modifies current document
#' @export
int <- function() {
  document_replace("int", "int <- as.integer")
}

#' @rdname connversion
#' @export
chr <- function() {
  document_replace("chr", "chr <- as.character")
}

#' @rdname connversion
#' @export
dbl <- function() {
  document_replace("dbl", "dbl <- as.double")
}

#' @rdname connversion
#' @export
lgl <- function() {
  document_replace("lgl", "lgl <- as.logical")
}
