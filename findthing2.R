if (!require("pacman")) install.packages("pacman")
pacman::p_load(tidyverse, openxlsx)



findthing2 <- function(name, datasets) {
  for (x in datasets) {
    mdfeime <- read.xlsx(x)
    set <- str_which(mdfeime$Symbol, name)
    if ((str_detect(mdfeime$Symbol, name)))=T) {
      print(paste0(name, " is ", mdfeime[rownames(set), 10] , " in dataset ", x))
    }
  }
} 

findthing2(name = "Ltf",
           datasets = list("DP IR vs DP Sham Filtered.xlsx",
                           "CD IR vs CD Sham Filtered.xlsx",
                           "DP Sham vs CD Sham Filtered.xlsx"))

str_which(CDIRCDSHAM$Symbol, "Bmp")

str_match_all(DPIRDPSHAM$Symbol, "Bmp")
