#' d3_wordcloud
#'
#' @param .data ...
#' @param .word_col ... 
#' @param .size_col ...
#' @param .angle_col ...
#'
#' @returns ...
#' @export
#'
#' @examples
#' NULL
d3_wordcloud <- function(.data, .word_col, .size_col=NULL, .angle_col=NULL){
  
}

# generate_wordcloud_js <- function(.data, .width = 500, .height = 500) {
  
#   stopifnot(all(c("term", "size", "angle", "color") %in% colnames(.data)))
  
#   .words_json <- jsonlite::toJSON(
#     purrr::list_transpose(as.list(.data)), auto_unbox=TRUE
#   )

#   htmltools::HTML(stringi::stri_c('
#   {{{< div id="wordclo" >}}} {{{< /div >}}}

# {{{< raw_html >}}}
# <script>
# window.addEventListener("load", () => {
#   const words = [
#     {term:"R", size:50, rotate:90, color:"#45b085"},
#     {term:"Data", size:40, rotate:90, color:"#3f527e"},
#     {term:"Science", size:35, rotate:45, color:"#45b085"},
#     {term:"Visualization", size:30, rotate:0, color:"#3f527e"},
#     {term:"Shiny", size:25, rotate:45, color:"#45b085"},
#     {term:"Model", size:20, rotate:45, color:"#45b085"},
#     {term:"Plot", size:18, rotate:45, color:"#45b085"},
#     {term:"Tidyverse", size:22, rotate:-45, color:"#45b085"},
#     {term:"Cloud", size:28, rotate:90, color:"#45b085"},
#     {term:"Statistics", size:32, rotate:45, color:"#45b085"}
#   ];

#   const layout = d3.layout.cloud()
#     .size([500, 500])
#     .words(words.map(d => Object.assign({}, d)))
#     .padding(5)
#     .font("Open Sans")
#     .fontSize(d => d.size)
#     .rotate(d => d.rotate)
#     .on("end", draw);

#   layout.start();

#   function draw(words) {
#     d3.select("#wordclo").append("svg")
#       .attr("width", layout.size()[0])
#       .attr("height", layout.size()[1])
#       .append("g")
#       .attr("transform", "translate(" + layout.size()[0] / 2 + "," + layout.size()[1] / 2 + ")")
#       .selectAll("text")
#       .data(words)
#       .enter().append("text")
#       .style("font-size", d => d.size + "px")
#       .style("font-family", "Open Sans")
#       .style("fill", d => d.color)
#       .attr("text-anchor", "middle")
#       .attr("transform", d => "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")")
#       .text(d => d.term);
#   }
# });
# </script>

# {{{< /raw_html >}}}',
#     sep="\n"
#   ))

# }

# df <- data.frame(
#   term = c("R", "Data", "Science", "Visualization", "Shiny", "Model", "Plot", "Tidyverse", "Cloud", "Statistics"),
#   size = c(50, 40, 35, 30, 25, 20, 18, 22, 28, 32),
#   angle = sample(c(0, 45, -45, 90), 10, replace = TRUE),
#   color= sample(c("#45b085", "#3f527e"), 10, replace = TRUE)
# )

# knitr::asis_output(as.character(generate_wordcloud_js(.data=df)))