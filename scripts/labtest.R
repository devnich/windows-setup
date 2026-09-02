# ----------------------------------
# Import libraries
# ----------------------------------
library(dplyr)
library(ggplot2)

# ----------------------------------
# Configure files and directories
# ----------------------------------
setwd("~/Documents/Installers/windows-setup/scripts")

# Define directory locations
dir_raw = "../data"
dir_processed = "../data/processed"

# Check directories
if (basename(getwd()) != "scripts") {
    stop("Execute this script from the /scripts directory")
}

if (! dir.exists(dir_raw)) {
    stop("/data directory does not exist")
}

if (! dir.exists(dir_processed)) {
    dir.create(dir_processed, recursive = TRUE)
    print(paste("Created", dir_processed))
}

# ----------------------------------
# dplyr
# ----------------------------------
# Import data
species <- read.csv(paste(dir_raw, "species.csv", sep = "/"))
surveys <- read.csv(paste(dir_raw, "surveys.csv", sep = "/"))

print(paste("Species:", dim(species)))
print(paste("Surveys:", dim(surveys)))
#print(str(surveys))

df <- surveys %>%
    mutate(weight_kg = weight / 1000,
           weight_lbs = weight_kg * 2.2)

fname = paste(dir_processed, "mutated_surveys.csv", sep = "/")
write.csv(df, file = fname)
print(paste("Saved output to", fname))

# ----------------------------------
# End test
# ----------------------------------
print("Completed R script test")
