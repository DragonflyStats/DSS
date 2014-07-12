pollutantmean <- function(directory, pollutant, id = 1:332) {

  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files

  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".

  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used

  # make sure we've got a pollutant we know about
  allowed_pollutants = c("sulfate", "nitrate")
  if (!(pollutant %in% allowed_pollutants)) {
    return(NA)
  }

  # create a vector of the filenames for the monitors based on directory
  # and the ID vector
  datafiles <- paste0(paste(directory, sprintf("%03d", id), sep = "/"), ".csv")

  # load all the files, rbind'ing as we go and assigne to poldata
  poldata <- do.call("rbind", lapply(datafiles, function(fn) data.frame(Filename=fn, read.csv(fn))))

  # extract the column vector for the pollutant and remove the NAs
  polvals <- poldata[[pollutant]]
  polvals <- polvals[!is.na(polvals)]

  # NOTE: for some reason mean(poldata[[pollutant]], rm.na) always returned NA??

  # return the mean
  return(mean(polvals))

}
