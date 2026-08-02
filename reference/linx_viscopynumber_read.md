# Read LINX VisCopyNumber File

Reads the `linx.vis_copy_number.tsv` file.

## Usage

``` r
linx_viscopynumber_read(x)
```

## Arguments

- x:

  Path to `linx.vis_copy_number.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_copy_number.tsv", package = "linxreport")
(l <- linx_viscopynumber_read(x))
#> # A tibble: 51 × 5
#>    Chrom     Start       End    CN   BAF
#>    <fct>     <int>     <int> <dbl> <dbl>
#>  1 1             1 123605522  2    0.505
#>  2 1     123605523 248956422  1.99 0.503
#>  3 2             1  93139350  2.00 0.504
#>  4 2      93139351 242193529  2.01 0.502
#>  5 3             1  92214015  2.00 0.503
#>  6 3      92214016 198295559  1.99 0.504
#>  7 4             1  50726025  2.00 0.509
#>  8 4      50726026 190214555  2.01 0.505
#>  9 5             1  48272853  2.00 0.503
#> 10 5      48272854 181538259  2.00 0.504
#> # ℹ 41 more rows
```
