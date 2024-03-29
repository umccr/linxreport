% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rmd.R
\name{linx_rmd}
\alias{linx_rmd}
\title{Generate LINX HTML Report}
\usage{
linx_rmd(sample, table_dir, plot_dir, out_file = NULL, quiet = FALSE)
}
\arguments{
\item{sample}{Name of sample.}

\item{table_dir}{Path to LINX table directory.}

\item{plot_dir}{Path to LINX plot directory.}

\item{out_file}{Path to output HTML file (needs '.html' suffix).}

\item{quiet}{Suppress printing during rendering.}
}
\value{
Path to rendered HTML report.
}
\description{
Generates a LINX HTML report. It does so with the following steps:
\enumerate{
\item recursively copy the table and plot directories into tmp/plot and tmp/table
\item copy the rmd into tmp/linx.Rmd
\item render the rmd inside tmp/
\item return the path to the output HTML
}
}
\examples{
d <- system.file("extdata", package = "linxreport")
outd <- tempdir()
linx_rmd(
  sample = "COLO829v003T",
  table_dir = file.path(d, "tables"),
  plot_dir = file.path(d, "plots"),
  out_file = file.path(outd, "test1.html"),
  quiet = FALSE
)
}
