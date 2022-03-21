#' plotFrequencies
#'
#' @param name_me2 ahskdwnhsklx
#' @export
#' @importFrom magrittr %>%
f5 <- function(name_me2){
  name_me3 <- name_me2 %>%
    stringr::str_split(pattern = stringr::boundary("character"), simplify = TRUE) %>%
    as.character() %>%
    unique()

  counts <- sapply(name_me3, function(name_me4) stringr::str_count(string = name_me2, pattern =  name_me4)) %>%
    as.data.frame()

  colnames(counts) <- c("Counts")
  counts[["Name_me2"]] <- rownames(counts)

  name_me5 <- counts %>%
    ggplot2::ggplot(ggplot2::aes(x = Name_me2, y = Counts, fill = Name_me2)) +
    ggplot2::geom_col() +
    ggplot2::theme_bw()

  return(name_me5)
}
