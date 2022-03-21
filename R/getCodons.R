#' Get the codons of a RNA sequence
#'
#' @param rnaSequence
#' @param start
#'
#' @return codons
#' @export
#'
#' @examples
#' getCodons("AUGGACUGAUCGAUGU", start = 1)
#' [1] "AUG" "GAC" "UGA" "UCG" "AUG"
#'
getCodons <- function(rnaSequence, start = 1){
  rnaLength <- nchar(rnaSequence)
  codons <- substring(rnaSequence,
                      first = seq(from = start, to = rnaLength-3+1, by = 3),
                      last = seq(from = 3+start-1, to = rnaLength, by = 3))
  return(codons)
}
