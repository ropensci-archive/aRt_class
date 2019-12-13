#remotes::install_github("yixuan/fontr")
#remotes::install_github("djnavarro/jasmines")

library(fontr)
library(sysfonts)
library(tidyr)
library(dplyr)
library(jsonlite)
library(curl)

#get the google font
font<-"Gravitas One"
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

sep <- 0.5

#msg letters
msg2 <- bind_rows(
	get_letter("O", 1.1, sep, 1),
	get_letter("z", 2.9, sep, 2),
	get_letter("U", 4.5, sep, 3),
	get_letter("n", 6.1, sep, 4),
	get_letter("c", 7.9, sep, 5),
	get_letter("o", 9.4, sep, 6),
	get_letter("n", 11, sep, 7),
	get_letter("f", 12.8, sep, 8),
	get_letter("1", 14.4, sep, 9),
	get_letter("9", 15.3, sep, 10))

msg2$id <- as.factor(msg2$id)

xmax <- max(msg2$x, na.rm = T)
ymax <- max(msg2$y, na.rm = T)
xmin <- min(msg2$x, na.rm = T)
ymin <- min(msg2$y, na.rm = T)

plot(msg2$x[msg2$id == 1], msg2$y[msg2$id == 1], pch=".", type = "o", lwd = 3, ylim=c(ymin,ymax), xlim=c(xmin,xmax))
	lines(msg2$x[msg2$id == 2], msg2$y[msg2$id == 2], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 3], msg2$y[msg2$id == 3], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 4], msg2$y[msg2$id == 4], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 5], msg2$y[msg2$id == 5], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 6], msg2$y[msg2$id == 6], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 7], msg2$y[msg2$id == 7], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 8], msg2$y[msg2$id == 8], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 9], msg2$y[msg2$id == 9], pch=".", type = "o", lwd = 3,)
	lines(msg2$x[msg2$id == 10], msg2$y[msg2$id == 10], pch=".", type = "o", lwd = 3,)
	
