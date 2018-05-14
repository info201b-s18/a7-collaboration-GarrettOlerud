# Bring in relevant libraries, set working directory, and read in data
library("dplyr")
intro_survey <- read.csv("data/intro-survey.csv", stringsAsFactors = FALSE)

# Explore intro survey data
colnames(intro_survey)
num_students <- nrow(intro_survey)

# Function 1: Goup by year in college
by_year <- function() {
  intro_survey %>%
    group_by(What.is.your.current.class.standing.) %>%
    tally()
}
# Find average height and make function related to height
avg_height <- mean(intro_survey$How.many.inches.tall.are.you., na.rm = TRUE)
