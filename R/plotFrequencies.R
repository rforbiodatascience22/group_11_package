#' plotFrequencies
#'
#' @param aaSequence aaSequence
#' @export
#' @importFrom magrittr %>%
#'
plotFrequencies <- function(aminoAcids){
  aminoAcidsVector <- aminoAcids %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(aminoAcidsVector, function(aaSeq) stringr::str_count(string = aminoAcids, pattern =  aaSeq)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["aminoAcids"]] <- rownames(counts)

  aaPlot <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = aminoAcids, y = Counts, fill = aminoAcids)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(aaPlot)
}
