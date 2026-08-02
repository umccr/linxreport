# Read LINX Fusion File

Reads the `linx.fusion.tsv` file.

## Usage

``` r
linx_fusion_read(x)
```

## Arguments

- x:

  Path to `linx.fusion.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.fusion.tsv", package = "linxreport")
(l <- linx_fusion_read(x))
#> # A tibble: 2 × 21
#>   fivePrimeBreakendId threePrimeBreakendId name        reported reportedType
#>   <chr>               <chr>                <chr>       <chr>    <chr>       
#> 1 8                   11                   MLLT3_KMT2A false    NONE        
#> 2 3                   0                    KMT2A_MLLT3 true     KNOWN_PAIR  
#> # ℹ 16 more variables: reportableReasons <chr>, phased <chr>, likelihood <chr>,
#> #   fivePrimeVcfId <chr>, threePrimeVcfId <chr>, fivePrimeCoords <chr>,
#> #   threePrimeCoords <chr>, chainLength <dbl>, chainLinks <dbl>,
#> #   chainTerminated <chr>, domainsKept <chr>, domainsLost <chr>,
#> #   skippedExonsUp <dbl>, skippedExonsDown <dbl>, fusedExonUp <dbl>,
#> #   fusedExonDown <dbl>
```
