library(tidyverse)

# Read in US Social Security Data for list of baby names and frequency in California
babynames <- read.csv("data/CA.TXT", header = FALSE)

# Add column names to babynames data set
colnames(babynames) <- c("state", "gender", "year", "firstname", "count")

# Check output
head(babynames)

# Select only rows where babies were named "Julien"
juliens <- babynames%>%
  filter(firstname == "Julien")

# Create variable that is the largest number of babies named Julien in one year
famousJuliens <- max(juliens$count)

# Finding the year that the most babies were named Julien
best_julien <- juliens %>% 
  filter (count == famousJuliens) %>%
  select(year) %>% pull()

# View output
best_julien

# show the datasest of Juliens and their count after 2010
juliens[juliens$year > 2010,]
