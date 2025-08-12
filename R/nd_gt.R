#' Title
#'
#' @param .data NULL
#'
#' @returns NULL
#'
#' @export
#' @examples
#' NULL
nd_gt_tab_options <- function(.data) {
  .data |>
    gt::opt_css(css = NULL) |>
    gt::tab_options(
      column_labels.font.weight = "bold",
      table.font.size = "var(--bs-body-font-size)",
      table.font.weight = "var(--bs-body-fontweight)",
      table.font.names = "var(--bs-body-font-family)",
      # table.font.color = "var(--bs-body-color)",
      table.background.color = "#FFFFFF00",
      quarto.disable_processing = TRUE,
      heading.title.font.size = "var(--bs-body-font-size)"
    )
}

#' Title
#'
#' @param .data NULL
#'
#' @returns NULL
#'
#' @export
#' @examples
#' NULL
nd_gt_to_html <- function(.data) {
  .data |>
    gt::as_raw_html() |>
    xml2::read_xml() |>
    as.character() |>
    htmltools::HTML()
}
