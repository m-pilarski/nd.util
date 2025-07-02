#' d3_wordcloud
#'
#' @param .data ...
#' @param .element_id ... 
#'
#' @returns ...
#' @export
#'
#' @examples
#' NULL
d3_wordcloud <- function(.data, .element_id){
  
  stopifnot(all(c("term", "size", "rotate", "color") %in% colnames(.data)))
  
  .words_json <- jsonlite::toJSON(
    purrr::list_transpose(as.list(.data)), auto_unbox=TRUE
  )
  
  htmltools::tags$script(
    stringi::stri_c(
      "const words = ", .words_json, ";\n",
      "setupWordCloud(words, '", .element_id, "');"
    )
  )
}


dataframe <- data.frame(
  term = c("R", "Data", "Science", "Visualization", "Shiny", "Model", "Plot", "Tidyverse", "Cloud", "Statistics"),
  size = c(50, 40, 35, 30, 25, 20, 18, 22, 28, 32),
  angle = sample(c(0, 45, -45, 90), 10, replace = TRUE),
  color= sample(c("#45b085", "#3f527e"), 10, replace = TRUE)
)

generate_wordcloud_js <- function(.data, .element_id) {

}
