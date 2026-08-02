# Read LINX Driver Catalog File

Reads the `linx.driver.catalog.tsv` file.

## Usage

``` r
linx_drivercatalog_read(x)
```

## Arguments

- x:

  Path to `linx.driver.catalog.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.driver.catalog.tsv", package = "linxreport")
(l <- linx_drivercatalog_read(x))
#> # A tibble: 1 × 18
#>   chromosome chromosomeBand gene  transcript      isCanonical driver   category
#>   <chr>      <chr>          <chr> <chr>           <chr>       <chr>    <chr>   
#> 1 chr12      p12.1          KRAS  ENST00000311936 true        MUTATION ONCO    
#> # ℹ 11 more variables: likelihoodMethod <chr>, reportedStatus <chr>,
#> #   driverLikelihood <dbl>, missense <dbl>, nonsense <dbl>, splice <dbl>,
#> #   inframe <dbl>, frameshift <dbl>, biallelic <chr>, minCopyNumber <dbl>,
#> #   maxCopyNumber <dbl>
```
