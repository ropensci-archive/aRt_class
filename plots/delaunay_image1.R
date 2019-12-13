library(jasmines)
library(dplyr)
source(here::here("palettes.R"))

set.seed(43)
seed_delaunay(n = 20, grain = 50) %>%
	mutate(x = x * 5, y = y * 5) %>%
  time_tempest(iterations = 100, curl_seed = 43, scale = .0075) %>%
  mutate(order = time) %>%
  style_ribbon(
  	palette = palette_whitened,
    alpha_decay = .03, 
  	alpha_init = 1, 
  	background = "white",
  	seed_fill = "#aaaaaa44", 
  	seed_col = "#000000"
  ) %>%
  export_image(here::here("output", "delaunay1.png"))

