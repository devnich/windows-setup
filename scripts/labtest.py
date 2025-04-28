# ----------------------------------
# Start test
# ----------------------------------
print("Starting Python script test")

# ----------------------------------
# Import libraries
# ----------------------------------
import matplotlib.pyplot as plt
import numpy as np
import pandas as pd
import seaborn as sns

from pathlib import Path

# ----------------------------------
# Configure files and directories
# ----------------------------------
# Define directory locations
dir_scripts = Path()
dir_raw = Path("../data")
dir_processed = Path("../data/processed")

# Check directories
assert dir_scripts.cwd().stem == "scripts", \
    "Execute this script from the /scripts directory"

assert dir_raw.exists(), \
    "/data directory does not exist"

if not dir_processed.exists():
    dir_processed.mkdir()
    print("Created", dir_processed.absolute())

# ----------------------------------
# NumPy
# ----------------------------------
x = np.random.rand(10)
y = np.random.rand(10)
z = x @ y

print("Dot product of 2 random vectors:", z)

# ----------------------------------
# Pandas
# ----------------------------------
# Import data
species = pd.read_csv(dir_raw.joinpath("species.csv"), index_col="species_id")
surveys = pd.read_csv(dir_raw.joinpath("surveys.csv"), index_col="record_id")
print("Species:", species.shape)
print("Surveys:", surveys.shape)

# Join soe data frames
df_left = surveys.join(species, on="species_id", how="left")
print("Left join of species onto surveys:", df_left.shape)

df_inner = surveys.join(species, on="species_id", how="inner")
print("Inner join of species and surveys:", df_inner.shape)

print("Unique species in species table:", len(species.index))
print("Unique species in survey table:", len(pd.unique(surveys["species_id"])))

# Save output
df_inner.to_csv(dir_processed.joinpath("inner.csv"), index=False)
print("Saved output to", dir_processed.joinpath("inner.csv"))

# ----------------------------------
# Matplotlib
# ----------------------------------
penguins = pd.read_csv(dir_raw.joinpath("penguins.csv"))

fig, ax = plt.subplots(figsize=(8,6))
ax.bar(penguins["species"], penguins["body_mass_g"])
fig.savefig(dir_processed.joinpath("penguins_plt.png"), dpi=300)
print("Saved output to", dir_processed.joinpath("penguins_plt.png"))

# ----------------------------------
# Seaborn
# ----------------------------------
fig2 = sns.catplot(data=penguins, kind="bar",
                   x="species", y="body_mass_g", hue="sex",
                   palette="dark", alpha=.6, height=6,
                   errorbar='sd')
fig2.savefig(dir_processed.joinpath("penguins_sns.png"), dpi=300)
print("Saved output to", dir_processed.joinpath("penguins_sns.png"))

# ----------------------------------
# End test
# ----------------------------------
print("Completed Python script test")
