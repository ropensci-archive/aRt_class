library(jasmines)
source(here::here("palettes.R"))

seed_heart(2000) %>%
  time_tempest(iterations = 20, curl_seed = 43) %>%
  dplyr::mutate(order = time) %>%
  style_ribbon(palette = palette_ropensci,
               alpha_decay = 0, alpha_init = 1) %>%
  export_image(here::here("output", "heart_image.png"))

