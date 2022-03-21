#' Translate RNA into protein
#'
#' @param codons Vector of codons
#'
#' @return
#' @export
#'
#' @examples
translateRNASequence <- function(codons){
  aminoAcids <- paste0(genCode[codons], collapse = "")
  return(aminoAcids)
}
