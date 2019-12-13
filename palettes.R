

library(jasmines)

palette_ropensci <-c(
  "#80CFD3","#8BD3DA","#67BAB1","#A6DCE7","#8AD3DD","#BBE4ED","#E4F3F7","#7CCCC8",
  "#74C3C1","#88D2DD","#8AD3E4","#64B7AA","#9FDAE4","#A8DEED","#B1E1F1","#A0DCF4",
  "#9CD9E7","#71C1BC","#9CD8E0","#B2E1ED","#7ACCCF","#D4EDF3","#7ACCC9","#8DD3D8",
  "#6EBEBA","#80CED0","#8CD4E1","#CDEBF1","#ADE0F0","#B9E3EC","#8DD4E0","#69BAB3",
  "#CCEAF1","#9BD9E6","#A6DDF0","#A3DDF8","#79CAC7"
) %>%
  sort() %>% (purrr::lift_dv(palette_manual))()
