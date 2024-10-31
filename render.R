library(rmarkdown)
library(glue)
library(vitae)

# Get current date and format it
current_date <- format(Sys.Date(), "%b%Y")

# Create the dynamic filename
output_filename <- glue("Tuan Le Khac_Resume_{current_date}.pdf")

# First source the customization file
source('./customization/vitae_customization.R')

# Set the entry formats as in your YAML
vitae:::set_entry_formats(tuanlk_entries)

# Render with matching configuration
render(
  input = "resume.Rmd",
  output_file = output_filename,
  output_format = cv_document(
    template = "./customization/latex_customization.tex",
    citation_package = "biblatex"
  )
)
