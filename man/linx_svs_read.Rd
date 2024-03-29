% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/linx_tab.R
\name{linx_svs_read}
\alias{linx_svs_read}
\title{Read LINX SVS File}
\usage{
linx_svs_read(x)
}
\arguments{
\item{x}{Path to \code{linx.svs.tsv} file.}
}
\value{
The input file as a tibble.
}
\description{
Reads the \code{linx.svs.tsv} file.
}
\examples{
x <- system.file("extdata/tables/COLO829v003T.linx.svs.tsv", package = "linxreport")
(l <- linx_svs_read(x))
}
