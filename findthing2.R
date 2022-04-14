if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, openxlsx)



findthing2 <- function(name, datasets) {
  for (x in datasets) {
    mdfeime <- read.xlsx(x)
    set <- mdfeime[str_detect(mdfeime$Symbol, name), ]
    if (nrow(set) > 0) {
      print(paste0(mdfeime$Symbol[as.integer(row.names(set))],
                   " is ",
                   mdfeime$SaR[as.integer(row.names(set))] ,
                   " in ",
                   x))
    }
  }
}

findthing2(name = "Bmp",
           datasets = list("DP IR vs DP Sham Filtered.xlsx",
                           "CD IR vs CD Sham Filtered.xlsx",
                           "DP Sham vs CD Sham Filtered.xlsx"))