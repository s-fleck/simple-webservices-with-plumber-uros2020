#' collect the example data from various sources. Will not work outside of
#' staticst austria
library(smartmap)
library(gv.api.gvkapp)
library(magrittr)


examples_dir <- system.file("examples", package = "gv.api.gvkapp")
list.files(examples_dir)

# scp sgvkapp@localhost:/home/sgvkapp/cache/dev/-5_0cd4f88bb4e4b9bf6c4692563091b301  /home/fleck/r-projekte/simple-webservices-with-plumber-uros2020/data/
x <- readRDS(file.path(examples_dir, "2019-04-17_brunn-am-gebirge_klagenfurt-am-woerthersee.rds"))

httr::GET()

saveRDS(
  x,
  here("data/2019-04-17_brunn-am-gebirge_klagenfurt-am-woerthersee.rds")
)
