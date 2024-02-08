#' Generate LINX HTML Report
#'
#' Generates a LINX HTML report. It does so with the following steps:
#' 1. recursively copy the table and plot directories into tmp/plot and tmp/table
#' 2. copy the rmd into tmp/linx.Rmd
#' 3. render the rmd inside tmp/
#' 4. return the path to the output HTML
#'
#' @param sample Name of sample.
#' @param table_dir Path to LINX table directory.
#' @param plot_dir Path to LINX plot directory.
#' @param out_file Path to output HTML file (needs '.html' suffix).
#' @param quiet Suppress printing during rendering.
#'
#' @return Path to rendered HTML report.
#' @export
linx_rmd <- function(sample, table_dir, plot_dir, out_file = NULL, quiet = FALSE) {
  assertthat::assert_that(
    is.character(sample), nchar(sample) > 0,
    dir.exists(table_dir), dir.exists(plot_dir),
    quiet %in% c(FALSE, TRUE)
  )
  if (!is.null(out_file)) {
    assertthat::assert_that(
      is.character(out_file),
      tools::file_ext(out_file) == "html"
    )
  } else {
    out_file <- paste0("linx_", sample, ".html")
  }
  tmp_dir <- tempdir()
  rmd_dir <- system.file("rmd", package = "linxreport")
  cpdir(table_dir, tmp_dir)
  cpdir(plot_dir, tmp_dir)
  cpdir(rmd_dir, tmp_dir)
  rmd_file <- file.path(tmp_dir, "linxreport.Rmd")
  out_dir <- dirname(out_file)
  mkdir(out_dir)
  pars <- list(
    table_dir = table_dir,
    plot_dir = plot_dir,
    sample = sample
  )
  # suppress DT large size warning
  options(DT.warn.size = FALSE)
  rmarkdown::render(
    input = rmd_file,
    params = pars,
    output_dir = out_dir,
    output_file = I(out_file),
    run_pandoc = TRUE,
    quiet = quiet
  )
}

#' Chromosome Plot Paths
#'
#' @param params Parameter list input for the RMarkdown file.
#'
#' @return A tibble with path, chrom, and nsegs columns.
#' @export
linx_path_plot_chr <- function(params) {
  assertthat::assert_that(is.list(params), all(c("sample", "plot_dir") %in% names(params)))
  pat <- glue::glue("{params$sample}\\.chr(.*)\\.(\\d+)\\.png") |> as.character()
  x <- list.files(file.path(params$plot_dir), pattern = pat, full.names = TRUE)
  if (length(x) == 0) {
    warning(glue::glue("No LINX chromosome plots found in\n{params$plot_dir}."))
    return(NULL)
  }
  d <- stringr::str_match(x, pat) |>
    dplyr::as_tibble(.name_repair = "minimal") |>
    stats::setNames(c("path", "chrom", "nsegs")) |>
    dplyr::mutate(
      path = file.path(params$plot_dir, .data$path),
      nsegs = as.integer(.data$nsegs)
    ) |>
    dplyr::arrange(linxreport::mixedrank(.data$chrom))
  d
}

#' Cluster Plot Paths
#'
#' @param params Parameter list input for the RMarkdown file.
#'
#' @return A tibble with path, chrom, and nsegs columns.
#' @export
linx_path_plot_cluster <- function(params) {
  assertthat::assert_that(is.list(params), all(c("sample", "plot_dir") %in% names(params)))
  pat <- glue::glue("{params$sample}\\.cluster-(\\d+)\\.sv(\\d+)\\.(\\d+)\\.png") |> as.character()
  x <- list.files(file.path(params$plot_dir), pattern = pat, full.names = TRUE)
  if (length(x) == 0) {
    warning(glue::glue("No LINX cluster plots found in\n{params$plot_dir}."))
    return(NULL)
  }
  d <- stringr::str_match(x, pat) |>
    dplyr::as_tibble(.name_repair = "minimal") |>
    stats::setNames(c("path", "clusterId", "svId", "nsegs")) |>
    dplyr::mutate(
      path = file.path(params$plot_dir, .data$path),
      nsegs = as.integer(.data$nsegs),
      clusterId = as.integer(.data$clusterId)
    ) |>
    dplyr::arrange(.data$clusterId) |>
    dplyr::mutate(clusterId = sprintf(glue::glue("%0{nchar(max(.data$clusterId))}d"), .data$clusterId))
  d
}

#' Session Information Tables
#'
#' Session information tables.
#'
#' @param pkgs Vector of R packages to display in the vignette. By default returns all.
#'
#' @return A list with two tibbles containing information about the platform and
#' the specified packages.
#' @export
session_info_tbls <- function(pkgs = NULL) {
  si <- sessioninfo::session_info(include_base = TRUE)
  assertthat::assert_that(all(c("platform", "packages") %in% names(si)))
  si_pl <- unclass(si[["platform"]]) |>
    unlist() |>
    tibble::enframe(name = "name", value = "value")
  si_pkg <- unclass(si[["packages"]]) |>
    dplyr::as_tibble() |>
    dplyr::select(
      "package",
      version = "ondiskversion", datestamp = "date", "source"
    )
  if (!is.null(pkgs)) {
    si_pkg <- si_pkg |>
      dplyr::filter(.data$package %in% pkgs)
  }
  list(
    si_pl = si_pl,
    si_pkg = si_pkg
  )
}

#' DataTable Table
#'
#' @param x The tibble to display as a DT.
#'
#' @return A DT object.
#' @export
dt_table <- function(x) {
  x |>
    DT::datatable(
      filter = list(position = "top", clear = FALSE, plain = TRUE),
      class = "cell-border display compact",
      rownames = FALSE,
      extensions = c("Scroller", "Buttons", "KeyTable"),
      options = list(
        scroller = TRUE, scrollY = 400, scrollX = TRUE,
        autoWidth = FALSE, keys = TRUE,
        buttons = c("csv", "excel"), dom = "Blfrtip"
      )
    )
}
