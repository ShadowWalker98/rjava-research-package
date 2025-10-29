#' An S3 class for Reeb graph persistent pairs
#'
#' This S3 class is a light wrapper around a data frame containing the values,
#' indices, and orders of persistent pairs.
#'
#' @details The data frame has 6 columns, 2 each (birth and death) for 6
#'   properties: value (height), index, and order.
#'
#' @examples
#' x <- reeb_graph(
#'   values = c(0, .4, .6, 1),
#'   edgelist = rbind(c(0, 1), c(0, 2), c(1, 3), c(2, 3))
#' )
#' mp <- mergepairing(
#'   seq_along(x$values) - 1, x$values,
#'   x$edgelist[, 1], x$edgelist[, 2]
#' )
#' print(mp)
#' as.data.frame(mp)
#' @export
as.data.frame.reeb_pairs <- function(x, ...) {
  check_reeb_pairs(x)
  class(x) <- "data.frame"
  x
}

check_reeb_pairs <- function(x) {
  stopifnot(
    inherits(x, "data.frame"),
    setequal(
      names(x),
      outer(
        c("birth", "death"),
        c("value", "index", "order"),
        FUN = paste, sep = "_"
      )
    ),
    is.numeric(x$birth_value), is.numeric(x$death_value),
    is.integer(x$birth_index), is.integer(x$death_index),
    is.numeric(x$birth_order), is.numeric(x$death_order)
  )
}
