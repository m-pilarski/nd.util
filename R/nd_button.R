icon_fa <- function(.fa_class){
  htmltools::tags$i(class=.fa_class, role="resentation")
}

tags <- htmltools::tags

tags$button(
  class="btn btn-primary bslib-task-button block bg-primary text-white",
  `data-auto-reset`=NA,
  id="GENERATE",
  style="width: 100%; padding: 8px 16px;",
  type="button",
  tags$span(
    slot="ready",
    tags$i(class="fa-solid fa-dice", role="resentation"),
    "Erhalte einen zufälligen Google News Artikel"
  ),
  tags$span(
    slot="busy",
    tags$i(class="fa-solid fa-dice fa-spin", role="resentation"),
    "Erhalte einen zufälligen Google News Artikel"
  )
)
tags$script("$('#GENERATE').click();")