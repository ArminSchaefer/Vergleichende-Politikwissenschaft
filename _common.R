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
p_load(here, democracyData, tidyverse)


# set a theme

options(
  tidyverse.quiet = TRUE,
  propensity.quiet = TRUE,
  tipr.verbose = FALSE,
  htmltools.dir.version = FALSE,
  width = 55,
  digits = 4,
  ggplot2.discrete.colour = ggokabeito::palette_okabe_ito(),
  ggplot2.discrete.fill = ggokabeito::palette_okabe_ito(),
  ggplot2.continuous.colour = "viridis",
  ggplot2.continuous.fill = "viridis",
  book.base_size = 12
)

library(ggplot2)

theme_set(
  theme_light(
    base_size = getOption("book.base_size"),
    base_family = getOption("book.base_family")
  ) %+replace%
    theme(
      title = element_text(color = "black", 
                           size = 10),
      axis.text = element_text(color = "black", 
                               size = 10),
      axis.title = element_text(color = "black",
                                face = "bold",
                                size = 10),
      strip.text = element_text(color = "black",
                                size = 10),
      strip.background = element_rect(color = "grey80",
                                      fill = "grey80"),
      panel.grid.minor = element_blank(),
      panel.grid.major = element_line(color = "gray90",
                                      linewidth = rel(0.2)),
      legend.text = element_text(size = 8),
      legend.key.size = unit(.5, 'cm')
    )
)