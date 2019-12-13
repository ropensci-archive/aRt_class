# wrapper to the jasmines manual palette function
make_palette <- function(...) {
  jasmines::palette_manual(...) 
}

# basic ropensci colours
palette_ropensci <- make_palette(
  "#64B7AA", "#67BAB1", "#69BAB3", "#6EBEBA", "#71C1BC", "#74C3C1", 
  "#79CAC7", "#7ACCC9", "#7ACCCF", "#7CCCC8", "#80CED0", "#80CFD3", 
  "#88D2DD", "#8AD3DD", "#8AD3E4", "#8BD3DA", "#8CD4E1", "#8DD3D8", 
  "#8DD4E0", "#9BD9E6", "#9CD8E0", "#9CD9E7", "#9FDAE4", "#A0DCF4", 
  "#A3DDF8", "#A6DCE7", "#A6DDF0", "#A8DEED", "#ADE0F0", "#B1E1F1", 
  "#B2E1ED", "#B9E3EC", "#BBE4ED", "#CCEAF1", "#CDEBF1", "#D4EDF3", 
  "#E4F3F7"
)

# ropensci with some ghostwhite
palette_whitened <- make_palette(
  "#64B7AA", "#67BAB1", "#69BAB3", "#6EBEBA", "#71C1BC", "#74C3C1", 
  "#79CAC7", "#7ACCC9", "#7ACCCF", "#7CCCC8", "#80CED0", "#80CFD3", 
  "#88D2DD", "#8AD3DD", "#8AD3E4", "#8BD3DA", "#8CD4E1", "#8DD3D8", 
  "#8DD4E0", "#9BD9E6", "#9CD8E0", "#9CD9E7", "#9FDAE4", "#A0DCF4", 
  "#F8F8FF", "#F8F8FF", "#F8F8FF", "#F8F8FF", "#F8F8FF", "#F8F8FF", # patch of ghostwhite
  "#A3DDF8", "#A6DCE7", "#A6DDF0", "#A8DEED", "#ADE0F0", "#B1E1F1", 
  "#B2E1ED", "#B9E3EC", "#BBE4ED", "#CCEAF1", "#CDEBF1", "#D4EDF3", 
  "#E4F3F7"
)