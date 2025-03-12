#' nd_button_block
#'
#' @param .id ...
#' @param .label ...
#' @param .fa_class ...
#' @param .label_busy ...
#' @param .fa_class_busy ...
#' @param ... ...
#'
#' @returns ...
#' @export
#'
#' @examples
#' NULL
nd_button_block <- function(
  .id, .label, .fa_class, .label_busy=.label, .fa_class_busy=.fa_class, ...
){
  
  .dots <- list(...)
  
  bslib::input_task_button(
    id=.id, 
    class="btn btn-primary btn-lg btn-block text-white",
    label=.label, 
    icon=icon_fa(.fa_class),
    label_busy=.label_busy,
    icon_busy=icon_fa(.fa_class_busy),
    !!!.dots
  )

}