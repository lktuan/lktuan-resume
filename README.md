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
5. Click 'Knit' in RStudio or run:
   ```r
   rmarkdown::render("resume.Rmd")
   ```

## Example Code

Here's a sample of how to read and format your data in the R Markdown file:

```r
# Reading education data
education <- read_excel("data/education.xlsx") %>%
  mutate(
    start_date = ymd(start_date),
    end_date = ymd(end_date)
  )

# Using detailed_entries from vitae
detailed_entries(
  education,
  what = degree,
  when = glue("{year(start_date)} - {year(end_date)}"),
  with = institution,
  where = location,
  why = description
)
```

## Troubleshooting

Common issues and solutions:

1. **LaTeX package errors**
   - MiKTeX: Allow automatic package installation in MiKTeX settings
   - TinyTeX: Run `tinytex::parse_install()` to install missing packages

2. **Template not found error**
   - Verify file paths in YAML header match your project structure
   - Ensure template files are in the correct location

3. **Data reading errors**
   - Check Excel file formats and column names
   - Verify date formats in Excel files
   - Ensure all required columns are present

## Additional Resources

- [vitae package documentation](https://pkg.mitchelloharawild.com/vitae/)
- [tidyverse documentation](https://www.tidyverse.org/)
- [R Markdown documentation](https://rmarkdown.rstudio.com/)
- [LaTeX documentation](https://www.latex-project.org/help/documentation/)

## Customization

The CV can be customized by:
1. Modifying the LaTeX template in `customization/latex_customization.tex`;
2. Adjusting the R settings in `customization/vitae_customization.R`;
3. Adding new sections by creating additional data files;
4. Modifying the `detailed_entries()` format in `resume.Rmd`.
