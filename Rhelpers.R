# this code is based on a function by Mark Edmondson

addNumericSuffix <- function(n) {
	# ensure that n is a number
	n <- as.numeric(n)

	# initialize the result to the most common version
	result <- paste0(n, "th")

	# special cases happen with 11, 12, and 13 (English is weird)
	if ( !(n %% 100 %in% c(11, 12, 13))) {
		result <- switch(
			as.character(n %% 10),
			"1" = {paste0(n, "st")},
			"2" = {paste0(n, "nd")},
			"3" = {paste0(n, "rd")},
			paste0(n, "th")
		)
	}

	return(result)
}
