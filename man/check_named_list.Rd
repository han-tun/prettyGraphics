% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{check_named_list}
\alias{check_named_list}
\title{Check that a list is named}
\usage{
check_named_list(arg = NULL, l, ignore_empty = TRUE)
}
\arguments{
\item{arg}{(optional) A character string which defines the argument of a parent function.}

\item{l}{A list.}

\item{ignore_empty}{A logical input which defines whether or not to ignore empty lists.}
}
\value{
The function returns a helpful error message for unnamed lists (ignoring empty lists if requested) or the inputted list unchanged.
}
\description{
This function checks that the top level of a list is named (ignoring empty lists if requested). If the list is not named, the function returns a helpful error message. Otherwise, the list is returned unchanged. This is particularly useful within functions that use \code{\link[base]{do.call}} to evaluate lists of arguments.
}
\author{
Edward Lavender
}
\keyword{internal}
