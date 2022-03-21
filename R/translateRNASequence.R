translateRNASequence <- function(codons){
  aminoAcids <- paste0(genCode[codons], collapse = "")
  return(aminoAcids)
}
