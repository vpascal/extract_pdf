library(pdftools)
library(stringr)
library(dplyr)


file <- "https://www.ohio.edu/instres/compendium/profile/EDUProfile.pdf"

txt <- pdf_text(file)
pages2 <- txt[2]

temp <- unlist(strsplit(pages2, "\\r\\n"))

str_extract_all(pattern = "\\d{4}", temp)
str_extract_all(pattern = "\\d{4}", temp)

str_extract_all(pattern = "\\d{1,}[\\,\\.]\\d{1,}|\\d{1,} | \\d{2}\\-\\d{2}", pages2)
