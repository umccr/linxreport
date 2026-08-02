# Read LINX Drivers File

Reads the `linx.drivers.tsv` file.

## Usage

``` r
linx_drivers_read(x)
```

## Arguments

- x:

  Path to `linx.drivers.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.drivers.tsv", package = "linxreport")
(l <- linx_drivers_read(x))
#> # A tibble: 0 × 3
#> # ℹ 3 variables: clusterId <chr>, gene <chr>, eventType <chr>
```
