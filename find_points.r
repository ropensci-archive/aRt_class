library(raster)

r <- brick("icon_lettering_black.png")
plotRGB(r)

x<-locator()
head(x)
points(i$x, i$y, col=3)


saveRDS(i, file="ropensci_points.rds")
