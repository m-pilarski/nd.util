#' @importFrom htmltools tags
#' @export
htmltools::tags


#' icon_fa
#'
#' @param .fa_class ...
#'
#' @returns ...
#' @export
#'
#' @examples
#' NULL
icon_fa <- function(.fa_class){
  htmltools::tags$i(class=.fa_class, role="presentation")
}

#' html_to_md
#'
#' @param .html ...
#'
#' @returns ...
#' @export
#'
#' @examples
#' NULL
html_to_md <- function(.html){
  cat("```{=html}", purrr::map_chr(.html, as.character), "```", sep="\n")
}