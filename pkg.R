rstudioapi::documentSaveAll()
devtools::document()
devtools::load_all()

#usethis::use_vignette("CentralDogma")

devtools::build_vignettes()

rmarkdown::render(input = "./vignettes/vignette_CentralDogma.Rmd")
usethis::use_readme_rmd( open = TRUE )
devtools::build_readme()
