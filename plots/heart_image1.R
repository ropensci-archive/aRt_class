library(jasmines)
source(here::here("palettes.R"))

seed_heart(2000) %>%
  time_tempest(iterations = 100, curl_seed = 43, scale = .0075) %>%
  dplyr::mutate(order = time) %>%
  style_ribbon(palette = palette_whitened,
               alpha_decay = .03, alpha_init = 1, 
  						 seed_fill = "#00000044") %>%
  export_image(here::here("output", "heart_image1.png"))

