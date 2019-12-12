#remotes::install_github("yixuan/fontr")
#remotes::install_github("djnavarro/jasmines")

library(fontr)
library(sysfonts)
library(tidyr)
library(dplyr)

#get the google font
font<-"Allura"
font_add_google(name=font)

#function to get polygons with spacing
get_letter <- function(ch, xshift, yshift, id) {
	char_poly <-  glyph_polygon(
		ch, family = font, 
		face = "regular", nseg = 100)
	char_poly$x <- (char_poly$x * 1.9) + xshift
	char_poly$y <- (char_poly$y * 1.9) + yshift
	char_poly$id <- id
	return(char_poly)
}

sep <- 0.05

#msg letters
msg2 <- bind_rows(
	get_letter("O", 1.2, sep, 1),
	get_letter("Z", 2.7, sep, 2),
	get_letter("U", 4.2, sep, 3),
	get_letter("N", 5.6, sep, 4),
	get_letter("C", 7.3, sep, 5),
	get_letter("O", 8.6, sep, 6),
	get_letter("N", 10.1, sep, 7),
	get_letter("F", 11.8, sep, 8),
	get_letter("1", 13.3, sep, 9),
	get_letter("9", 14.1, sep, 10))
plot(msg2$x, msg2$y, pch=".")

max(msg$x[msg$id==9], na.rm = T)


saveRDS(msg, file="unconf_poly.rds")
