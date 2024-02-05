# first homework check

folder_path <- "C:/Users/ronalds.cinks/Desktop/rstudio_hw_nr_1"
main_folder <- list.files(folder_path, pattern = "\\.(r|R|txt)$", full.names = TRUE, recursive = TRUE)

main_folder
x <- 0
for (file in main_folder) {
  if (x > 0) {
    break
  }
  source(file)
  
  if (is.null(profit)){
    print("profit not found")
  } else {
    print(profit)
  }
  
  if (is.null(profit_after_tax)){
    print("profit_after_tax not found")
  } else if (is.null(profit_margin)){
    print("profit_marfin not found")
  } else if (is.null(good_months)){
    print("good months not found")
  } else if (is.null(bad_months)){
    print("bad months not found")
  } else if (is.null(best_month)){
    print("best_month not found")
  } else if (is.null(worst_month)){
    print("worst month not found")
  }
    x <- x + 1
}


