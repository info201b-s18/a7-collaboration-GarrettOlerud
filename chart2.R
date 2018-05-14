# Bring in relevant libraries, set working directory, and read in data
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(plotly)

intro_survey <- read.csv("data/intro-survey.csv", stringsAsFactors = FALSE)

#Create second function for Rmd page, use color palette that helps
#Visually-impaired detect differences.

plotted_2 <- function(dataset) {
  plotted_bar <- ggplot(data = dataset) +
    geom_bar(mapping = aes (x = Are.you.interested.in.applying.to.the.Informatics.major.,
                            fill = Were.you.born.in.Washington.state.)) +
    labs(x = "Interested in Info Major", y = "Total") +
    ggtitle("Interest in Info WA Natives vs. Non-Natives") +
    scale_fill_brewer(palette="Set2") +
    scale_fill_discrete(name="Born in WA State?")
  return(plotted_bar)
}