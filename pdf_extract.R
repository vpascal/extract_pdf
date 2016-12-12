library(pdftools)
library(stringr)
library(dplyr)
library(purrr)

file <- "https://www.ohio.edu/instres/compendium/profile/EDUProfile.pdf"

txt <- pdf_text(file)
pages2 <- txt[2]
pages2 <- gsub(pattern = "\\---","0" ,pages2)
temp <- unlist(strsplit(pages2, "\\r\\n"))

temp <- str_extract_all(pattern = "\\d{1,}[\\,\\.]\\d{1,}|\\d{1,} | \\d{2}\\-\\d{2}", temp)



do.call(rbind,temp)

