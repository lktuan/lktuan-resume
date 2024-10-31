# Tuan Le Khac's Résumé

Buidling a data-driven CV template using R Markdown and the vitae package. 
The CV content is stored in separate data files, making it easy to update and maintain.

## Prerequisites

### Required Software

1. **R** (>= 4.0.0)
   - Download from [R Project website](https://www.r-project.org/)
   - Required for running R Markdown

2. **RStudio** (recommended IDE)
   - Download from [RStudio website](https://posit.co/download/rstudio-desktop/)
   - Provides an integrated environment for R Markdown

3. **LaTeX Distribution** (choose one):
   - **MiKTeX** (recommended for Windows)
     - Download from [MiKTeX website](https://miktex.org/download)
     - Allows automatic package installation
   - **TinyTeX** (lightweight alternative)
     - Install through R using:
     ```r
     install.packages('tinytex')
     tinytex::install_tinytex()
     ```

4. **Pandoc** (>= 2.0)
   - Usually comes bundled with RStudio
   - If needed, download from [Pandoc website](https://pandoc.org/installing.html)

### Required R Packages

Install the following R packages:

```r
install.packages(c(
  "vitae",      # Core CV package
  "tidyverse",  # For data manipulation
  "rmarkdown",  # For rendering R Markdown documents
  "lubridate",  # For date manipulation
  "glue",       # For string interpolation
  "rlang",      # For programming with tidyverse
  "knitr",      # For knitting documents
  "readxl"      # For reading Excel files
))
```

## Usage

1. Clone/download this repository;
2. Open the project in RStudio;
3. Update the Excel files in the `data/` directory with your information;
4. Edit `resume.Rmd` if you need to modify the CV structure;
5. Run `source("render.R")` to generate your CV. This will create a PDF file named `Tuan Le Khac_Resume_[CurrentMonth][CurrentYear].pdf`. You can pass your name under `name` argument.

## Troubleshooting

Common issues and solutions:

1. **LaTeX package errors**
   - MiKTeX: Allow automatic package installation in MiKTeX settings
   - TinyTeX: Run `tinytex::parse_install()`

2. **Template not found error**
   - Verify file paths in YAML header
   - Check template file locations

3. **Data reading errors**
   - Verify Excel file formats and column names
   - Check date formats in Excel files

## Additional Resources

- [vitae package documentation](https://pkg.mitchelloharawild.com/vitae/)
- [tidyverse documentation](https://www.tidyverse.org/)
- [R Markdown documentation](https://rmarkdown.rstudio.com/)

## License

[`CC BY-NC-ND 4.0`](https://creativecommons.org/licenses/by-nc-nd/4.0/)
