seed_delaunay <- function(n) {
	points <- spatstat::runifpoint(n)
	del <- spatstat::delaunay(points)
	del <- as.data.frame(del)
	names(del) <- c("x", "y", "id")
	del$id <- gsub("Tile ", "", del$id)
	del$id <- as.numeric(del$id)
	return(del)
}
