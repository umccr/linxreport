
## LINX Example Results

- Results from the simulated WGS t/n data used in oncoanalyser
- LINX version details: `v2.0`
- Plots have been shrinked more than 90% compared to the original copies
  to minimize package size.
  - For nicer looking example plots, please refer to the LINX
    documentation at
    <https://github.com/hartwigmedical/hmftools/tree/master/linx>.

``` r
require(magick, include.only = "image_read")
require(fs, include.only = "dir_ls")

resize_plot <- function(x, outdir) {
  bname <- basename(x)
  magick::image_read(x) |>
    magick::image_resize("5%") |>
    magick::image_write(file.path(outdir, bname))
}

indir <- "plots_original"
outdir <- "plots"
indir |>
  fs::dir_ls(recurse = TRUE) |>
  purrr::map(resize_plot, outdir)
```
