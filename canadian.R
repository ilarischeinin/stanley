# to keep the global environment clean, use a dedicated one for the functions.

# first check if it already exists
if (!exists(".canadian_programming")) {

  # and if not, create it,
  .canadian_programming <- new.env()

  # add the needed functions
  evalq({
    infinite.eh <- function(...) { is.infinite(...) }
    numeric.eh <- function(...) { is.numeric(...) }
    na.eh <- function(...) { is.na(...) }
  }, envir=.canadian_programming)

  # and attach it to make the functions available
  attach(.canadian_programming)
}

# EOF
