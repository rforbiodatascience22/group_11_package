rstudioapi::documentSaveAll()
devtools::document()
devtools::load_all()

usethis::use_vignette("CentralDogma")

devtools::build_vignettes()
