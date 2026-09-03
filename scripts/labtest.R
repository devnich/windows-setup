# ----------------------------------
# Import libraries
# ----------------------------------
library(dplyr)
library(ggplot2)

if (! require(here)) {
    install.packages("here", repos = "https://cloud.r-project.org")
}
library(here)

# ----------------------------------
# Configure files and directories
# ----------------------------------
# Define directory locations
dir_raw = "data"
dir_processed = "data/processed"

# Check directories
if (! dir.exists(here(dir_raw))) {
    stop("/data directory does not exist")
}

if (! dir.exists(here(dir_processed))) {
    dir.create(here(dir_processed), recursive = TRUE)
    print(paste("Created", dir_processed))
}

# ----------------------------------
# dplyr
# ----------------------------------
# Import data
species <- read.csv(here(dir_raw, "species.csv"))
surveys <- read.csv(here(dir_raw, "surveys.csv"))

print(paste("Species:", dim(species)))
print(paste("Surveys:", dim(surveys)))

# Mutate data frame
df <- surveys %>%
    mutate(weight_kg = weight / 1000,
           weight_lbs = weight_kg * 2.2)

# Save output to CSV
fname = here(dir_processed, "mutated_surveys.csv")
write.csv(df, file = fname)
print(paste("Saved output to", fname))

# ----------------------------------
# End test
# ----------------------------------
print("Completed R script test")
