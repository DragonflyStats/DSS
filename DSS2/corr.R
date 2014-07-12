corr <- function(directory, threshold = 0) {

  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0

  id = 1:332

  # create a vector of the filenames for the monitors based on directory
  # and the ID vector
  datafiles <- paste0(paste(directory, sprintf("%03d", id), sep = "/"), ".csv")

  # load all the files, rbind'ing as we go and assigne to poldata
  poldata <<- do.call("rbind",
                      lapply(datafiles,
                             function(fn) data.frame(Filename=fn, read.csv(fn))
                             )
  )

  # get only the complete cases
  cc <<- poldata[complete.cases(poldata), ]

  # aggregate on ID NOTE: this is a copy of the complete function
  agg <<- aggregate(ID ~ factor(cc$ID, levels = id), data=cc, FUN = length)
  colnames(agg) <- c("id", "nobs")

  # pull those with monitors with more than threshold comlete cases
  comp <<- agg[agg$nobs > threshold,]

  # get the vector of monitors that pass the threshold
  monitors <<- as.numeric(comp$id)

  ## Return a numeric vector of correlations
  out <- numeric(0)
  for (i in monitors) {
    out <- c(out, my_cor(cc[cc$ID==i,]))
  }

  return(out)

}

my_cor <- function(x) {
  return(cor(x$sulfate, x$nitrate))
}

