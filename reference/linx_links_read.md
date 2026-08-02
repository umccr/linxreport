# Read LINX Links File

Reads the `linx.links.tsv` file.

## Usage

``` r
linx_links_read(x)
```

## Arguments

- x:

  Path to `linx.links.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.links.tsv", package = "linxreport")
(l <- linx_links_read(x))
#> # A tibble: 0 × 17
#> # ℹ 17 variables: clusterId <chr>, chainId <chr>, chainIndex <chr>,
#> #   chainCount <dbl>, lowerSvId <chr>, upperSvId <chr>,
#> #   lowerBreakendIsStart <chr>, upperBreakendIsStart <chr>, chromosome <chr>,
#> #   arm <chr>, assembled <chr>, traversedSVCount <dbl>, length <dbl>,
#> #   junctionCopyNumber <dbl>, junctionCopyNumberUncertainty <dbl>,
#> #   pseudogeneInfo <chr>, ecDna <chr>
```
