#' Title
#'
#' @param .slides NULL
#' @param .title NULL
#'
#' @return NULL
#' @export
#'
#' @examples
#' NULL
nd_carousel <- function(.slides, .title=""){

  .glide_id <- stringi::stri_c(
    "nd-", digest::sha1(list(.slides, Sys.time(), runif(1e3)))
  )

  .glide_container <- tags$div(
    id=.glide_id, class="glide nd-glide",
    tags$div(
      class="glide__controls d-flex justify-content-between align-middle pb-2",
      `data-glide-el`="controls",
      tags$button(
        `data-glide-dir`="<", 
        class="btn btn-primary text-white",
        tags$i(class="fa-solid fa-angles-left")
      ),
      tags$h4(class="text-center px-2", .title),
      tags$button(
        `data-glide-dir`=">", 
        class="btn btn-primary text-white",
        tags$i(class="fa-solid fa-angles-right")
      )
    ),
    tags$div(
      class="glide__track py-1", `data-glide-el` = "track", 
      tags$div(
        class="glide__slides", 
        htmltools::tagList(
          !!!purrr::map(.slides, tags$div, class="glide__slide")
        )
      )
    )
  )

  .glide_js <- tags$script(stringi::stri_c(
    "document.addEventListener('DOMContentLoaded', function () {",
    stringi::stri_c("  new Glide('#", .glide_id, "', {"),
    "    type: 'carousel',",
    "    perView: 2,",
    "    gap: 24,",
    "    autoplay: 5000,",
    "    breakpoints: {",
    "      576: { perView: 1 }",
    "    }",
    "  }).mount();",
    "})",
    sep="\n"
  ))

  .carousel <- htmltools::tagList(.glide_container, .glide_js)

  return(.carousel)

}