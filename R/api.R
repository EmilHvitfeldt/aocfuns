document_replace <- function(pattern, replacemet) {

  pattern <- paste0("aocfuns::", pattern, "\\(\\)")
  # Gets The active Documeent
  ctx <- rstudioapi::getActiveDocumentContext()

  # Checks that a document is active
  if (!is.null(ctx)) {

    text <- ctx$contents
    row <- grep(pattern, text)
    text <- gsub(pattern, replacemet, text)
    text <- paste0(text, collapse = "\n")

    rstudioapi::setDocumentContents(text)

    rstudioapi::setCursorPosition(rstudioapi::document_position(row, 1))
  }
}
