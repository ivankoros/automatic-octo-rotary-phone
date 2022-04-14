if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, openxlsx)



findthing2 <- function(name, datasets) {
  for (x in datasets) {
    mdfeime <- read.xlsx(x)
    set <- which(mdfeime == name, arr.ind = TRUE)
    if (nrow(set) > 0) {
      print(paste0(name, " is ", mdfeime[rownames(set), 10] , " in dataset ", x))
    }
  }
} 

findthing2(name = "Ltf",
           datasets = list("DP IR vs DP Sham Filtered.xlsx",
                           "CD IR vs CD Sham Filtered.xlsx",
                           "DP Sham vs CD Sham Filtered.xlsx"))

DPIRDPSHAM <- read.xlsx("DP IR vs DP Sham Filtered.xlsx")
CDIRCDSHAM <- read.xlsx("CD IR vs CD Sham Filtered.xlsx")
DPSHAMCDSHAM <- read.xlsx("DP Sham vs CD Sham Filtered.xlsx")
