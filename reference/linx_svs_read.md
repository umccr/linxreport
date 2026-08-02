# Read LINX SVS File

Reads the `linx.svs.tsv` file.

## Usage

``` r
linx_svs_read(x)
```

## Arguments

- x:

  Path to `linx.svs.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.svs.tsv", package = "linxreport")
(l <- linx_svs_read(x))
#> # A tibble: 4 × 23
#>   vcfIdStart vcfIdEnd svId  coordsStart  coordsEnd type  clusterId clusterReason
#>   <chr>      <chr>    <chr> <chr>        <chr>     <chr> <chr>     <chr>        
#> 1 0          2        0     chr9:204144… chr11:11… BND   1         PROXIMITY-1  
#> 2 1          3        1     chr9:204150… chr11:11… BND   1         PROXIMITY-0  
#> 3 4          NA       2     chr19:29815… NA        SGL   0         PROXIMITY-3  
#> 4 5          NA       3     chr19:29815… NA        SGL   0         PROXIMITY-2  
#> # ℹ 15 more variables: fragileSiteStart <chr>, fragileSiteEnd <chr>,
#> #   isFoldback <chr>, lineTypeStart <chr>, lineTypeEnd <chr>,
#> #   junctionCopyNumberMin <dbl>, junctionCopyNumberMax <dbl>, geneStart <chr>,
#> #   geneEnd <chr>, localTopologyIdStart <chr>, localTopologyIdEnd <chr>,
#> #   localTopologyStart <chr>, localTopologyEnd <chr>, localTICountStart <dbl>,
#> #   localTICountEnd <dbl>
```
