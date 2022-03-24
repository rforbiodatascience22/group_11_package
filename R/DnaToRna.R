#' Convert DNA to RNA
#'
#' @param dnaSequence
#'
#' @return rnaSequence
#' @export
#'
#' @examples
#' dnaSequence("ATATATA")
#' "AUAUAUA"
#'
DnaToRna <- function(dnaSequence){
  rnaSequence <- gsub("T", "U", dnaSequence)
  return(rnaSequence)
}
