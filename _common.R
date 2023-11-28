set.seed(1014)

knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  warning = FALSE,
  message = FALSE,
  echo = TRUE,
  fig.retina = 2,
  fig.width = 6,
  fig.asp = 2/3,
  fig.show = "hold"
)

# load packages

if(!require("pacman")) {install.packages("pacman");library(pacman)}
p_load(here, palmerpenguins, tidyverse)


# create a theme

theme_vp <- function(...) theme(
  title = element_text(color = "black", size = 10),
  axis.text = element_text(color = "black", size = 10),
  axis.title = element_text(color = "black",
                            face = "bold",
                            size = 10),
  strip.text = element_text(color = "black",
                            size = 12),
  panel.grid.minor = element_blank())