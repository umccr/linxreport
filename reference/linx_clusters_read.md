# Read LINX Clusters File

Reads the `linx.clusters.tsv` file.

## Usage

``` r
linx_clusters_read(x)
```

## Arguments

- x:

  Path to `linx.clusters.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.clusters.tsv", package = "linxreport")
(l <- linx_clusters_read(x))
#> # A tibble: 2 × 6
#>   clusterId category   synthetic resolvedType clusterCount clusterDesc
#>   <chr>     <chr>      <chr>     <chr>               <dbl> <chr>      
#> 1 0         SIMPLE     false     SGL_PAIR_INS            2 SGL=2      
#> 2 1         RECIPROCAL false     RECIP_TRANS             2 BND=2      
```
