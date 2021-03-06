% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/istacbase_search.R
\name{istacbase_search}
\alias{istacbase_search}
\title{Search information about data available through ISTACBASE API}
\usage{
istacbase_search(pattern, fields = "titulo", extra = TRUE,
  exact = FALSE, cache)
}
\arguments{
\item{pattern}{Character string or regular expression to be matched.}

\item{fields}{Character vector of column name through which to search.}

\item{extra}{if \code{FALSE}, only the namecode and title are returned,
if \code{TRUE}, all columns of the \code{cache} are returned.}

\item{exact}{Search for the exact pattern.}

\item{cache}{Data frame with metadata about API and ISTAC information.}
}
\value{
Data frame with metadata that match the search term.
}
\description{
This funcion allows finds those tables that match the search term and
returns a data frame with results
}
\examples{
istacbase_search(pattern = "superficie")
istacbase_search(pattern = "superficie", extra = TRUE)

istacbase_search(pattern = "medio ambiente", fields = "tema")
istacbase_search(pattern = "medio ambiente", fields = "tema", extra = TRUE)

# with regular expression operators
# 'islote' OR 'roque'
istacbase_search(pattern = "islote|roque")

}
