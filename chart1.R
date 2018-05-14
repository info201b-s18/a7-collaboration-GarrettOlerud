# Bring in relevant libraries, set working directory, and read in data
library(dplyr)
library(ggplot2)
library(RColorBrewer)
library(plotly)

intro_survey <- read.csv("data/intro-survey.csv", stringsAsFactors = FALSE)

#Create first function for Rmd page, use color palette that helps
#Visually-impaired detect differences.

plotted <- function(dataset) {
  plotted_bar <- ggplot(data = dataset) +
    geom_bar(mapping = aes (x = Are.you.a.Seahawks.fan.,
                            fill = What.is.your.current.class.standing.)) +
    labs(x = "Seahawk Fan", y = "Total") +
    ggtitle("Do Info Students Like the Seahawks?") +
    scale_fill_brewer(palette="Set1") +
    scale_fill_discrete(name="Key")
  return(plotted_bar)
}

