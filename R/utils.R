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
  htmltools::tags$i(class=.fa_class, role="resentation")
}