#!/usr/bin/env Rscript

suppressMessages(library(linxreport, include.only = "linx_rmd"))
suppressMessages(library(optparse, include.only = "make_option"))
suppressMessages(library(cli, include.only = "cli_h1"))

option_list <- list(
  make_option("--sample", help = "Sample name (REQUIRED)."),
  make_option("--plot", help = "Path to LINX plot directory (REQUIRED)."),
  make_option("--table", help = "Path to LINX table directory (REQUIRED)."),
  make_option("--out", help = "HTML output file name [def: linx_{sample}.html]."),
  make_option("--quiet", help = "Suppress log printing during rendering.", action = "store_true"),
  make_option(c("--version", "-v"), help = "Print version and exit.", action = "store_true")
)

parser <- optparse::OptionParser(option_list = option_list, formatter = optparse::TitledHelpFormatter)
opt <- optparse::parse_args(parser)

if (!is.null(opt$version)) {
  cat(as.character(packageVersion("linxreport")), "\n")
  quit("no", status = 0, runLast = FALSE)
}
# don't need these any more so NULLify to remove from params
opt$version <- NULL
opt$help <- NULL

##### Check required args
if (is.null(opt$sample) || is.null(opt$plot) || is.null(opt$table)) {
  cat("ERROR linxreport.R: '--sample', '--plot', and '--table' are required!\n")
  quit("no", status = 1, runLast = FALSE)
}

##### Convert missing logical flags to FALSE
flags <- c("quiet")
for (flag in flags) {
  if (is.null(opt[[flag]])) {
    opt[[flag]] <- FALSE
  }
}

cli::cli_h1("Start linxreport for {opt$sample}!")
tab <- normalizePath(opt$table, mustWork = TRUE)
pl <- normalizePath(opt$plot, mustWork = TRUE)
cat(unlist(opt))
res <- linxreport::linx_rmd(
  sample = opt$sample,
  table_dir = tab,
  plot_dir = pl,
  out_file = opt$out,
  quiet = opt$quiet
)
cli::cli_h1("Finished linxreport for {opt$sample}!")
cli::cli_alert_info("Path to HTML output:\n{res}")
