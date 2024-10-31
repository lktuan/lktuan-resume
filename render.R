library(rmarkdown)
library(glue)

render_cv <- function(name = "Tuan Le Khac", date_format = "%b%Y") {
  current_date <- format(Sys.Date(), date_format)
  output_filename <- glue("{name}_Resume_{current_date}.pdf")
  
  render(
    input = "resume.Rmd",
    output_file = output_filename,
    output_format = "vitae::cv_document"
  )
}

render_cv()
# or with different name/format:
# render_cv(name = "TuanLK", date_format = "%B%Y")