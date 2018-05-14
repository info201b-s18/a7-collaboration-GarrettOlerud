# Bring in relevant libraries, set working directory, and read in data
library("dplyr")
intro_survey <- read.csv("data/intro-survey.csv", stringsAsFactors = FALSE)

# Explore intro survey data
colnames(intro_survey)
num_students <- nrow(intro_survey)

# Summary function
intro_function <- function(dataset) {
  ret <- list()
  ret$`Number of Students` <- nrow(dataset)
  ret$`Average Height` <- mean(dataset$How.many.inches.tall.are.you., na.rm = TRUE)
  ret$`Class Standing: Freshman` <- dataset %>% filter(What.is.your.current.class.standing. == "Freshman") %>% tally()
  ret$`Class Standing: Sophomore` <- dataset %>% filter(What.is.your.current.class.standing. == "Sophomore") %>% tally()
  ret$`Class Standing: Junior` <- dataset %>% filter(What.is.your.current.class.standing. == "Junior") %>% tally()
  ret$`Class Standing: Senior` <- dataset %>% filter(What.is.your.current.class.standing. == "Senior") %>% tally()
  return (ret)
}

