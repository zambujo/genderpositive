library(magrittr)
usethis::ui_done("rendering the Report .....")
here::here("analysis", "Report.Rmd") %>%
  rmarkdown::render(
    output_format = "tufte::tufte_html",
    output_file = "index.html",
    output_dir = here::here(),
    quiet = FALSE
  )
