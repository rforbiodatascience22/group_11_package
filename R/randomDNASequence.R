#' Generate random DNA sequence
#'
#' @param length Length of the sequence
#'
#' @return
#' @export
#'
#' @examples
randomDNASequence <- function(length){
  seqVector <- sample(c("A", "T", "G", "C"), size = length, replace = TRUE)
  seqString <- paste0(name_me3, collapse = "")
  return(seqString)
}
