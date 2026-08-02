# Read LINX VisSegments File

Reads the `linx.vis_segments.tsv` file.

## Usage

``` r
linx_vissegments_read(x)
```

## Arguments

- x:

  Path to `linx.vis_segments.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_segments.tsv", package = "linxreport")
(l <- linx_vissegments_read(x))
#> # A tibble: 6 × 7
#>   ClusterId ChainId Chromosome PosStart  PosEnd    LinkPloidy InDoubleMinute
#>   <fct>       <dbl> <chr>      <chr>     <chr>          <dbl> <chr>         
#> 1 0               1 19         C         29815664       0.833 false         
#> 2 0               2 19         29815665  T              0.993 false         
#> 3 1               1 11         C         118484974      0.965 false         
#> 4 1               1 9          T         20414426       0.965 false         
#> 5 1               2 11         118485001 T              0.970 false         
#> 6 1               2 9          20415001  C              0.970 false         
```
