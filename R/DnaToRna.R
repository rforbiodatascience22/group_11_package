DnaToRna <- function(dnaSequence){
  rnaSequence <- gsub("T", "U", dnaSequence)
  return(rnaSequence)
}
