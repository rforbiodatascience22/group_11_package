#' Translate RNA into protein
#'
#' @param codons Vector of codons
#'
#' @return Amino acid sequence (string)
#' @export
#'
#' @examples
translateRNASequence <- function(codons){
  aminoAcids <- paste0(genCode[codons], collapse = "")
  return(aminoAcids)
}
