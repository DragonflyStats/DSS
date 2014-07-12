count <- function(cause = NULL) {
  library(stringr)
  
  causes <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  if (is.null(cause) || !is.element(cause, causes)) stop(paste("invalid cause specified:", cause))
  
  homicides <- readLines("homicides.txt")
  
  match <- str_match(homicides, "<dd>[Cc]ause: +([A-Za-z]+)</dd>")
  results <- table(na.omit(tolower(match[,2])))
  
  result <- results[names(results)==tolower(cause)]
  names(result) <- NULL
  
  return(result)
}