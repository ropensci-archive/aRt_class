
<!-- README.md is generated from README.Rmd. Please edit that file -->

# aRt\_class

``` r
library(jasmines)
library(dplyr)
source(here::here("palettes.R"))

seed_heart(2000) %>%
  time_tempest(iterations = 100, curl_seed = 43, scale = .0075) %>%
  mutate(order = time) %>%
  style_ribbon(
    palette = palette_whitened,
    alpha_decay = .03, 
    alpha_init = 1, 
    background = "white",
    seed_fill = "#00000044"
  ) 
```

![](README_files/figure-gfm/heart1-1.png)<!-- -->
