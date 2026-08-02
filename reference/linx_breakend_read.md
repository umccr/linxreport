# Read LINX Breakend File

Reads the `linx.breakend.tsv` file.

## Usage

``` r
linx_breakend_read(x)
```

## Arguments

- x:

  Path to `linx.breakend.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.breakend.tsv", package = "linxreport")
(l <- linx_breakend_read(x))
#> # A tibble: 20 × 22
#>    id    svId  vcfId coords isStart gene  transcriptId canonical geneOrientation
#>    <chr> <chr> <chr> <chr>  <chr>   <chr> <chr>        <chr>     <chr>          
#>  1 0     0     0     chr9:… true    MLLT3 ENST0000038… true      Downstream     
#>  2 1     0     0     chr9:… true    MIR4… ENST0000058… true      Downstream     
#>  3 2     0     0     chr9:… true    RNU4… ENST0000041… true      Upstream       
#>  4 3     0     2     chr11… false   KMT2A ENST0000053… true      Upstream       
#>  5 4     0     2     chr11… false   TTC36 ENST0000030… true      Upstream       
#>  6 5     0     2     chr11… false   TMEM… ENST0000031… true      Upstream       
#>  7 6     0     2     chr11… false   RPL5… ENST0000046… true      Upstream       
#>  8 7     0     2     chr11… false   ARCN1 ENST0000026… true      Upstream       
#>  9 8     1     1     chr9:… true    MLLT3 ENST0000038… true      Upstream       
#> 10 9     1     1     chr9:… true    MIR4… ENST0000058… true      Upstream       
#> 11 10    1     1     chr9:… true    RNU4… ENST0000041… true      Downstream     
#> 12 11    1     3     chr11… false   KMT2A ENST0000053… true      Downstream     
#> 13 12    1     3     chr11… false   TTC36 ENST0000030… true      Downstream     
#> 14 13    1     3     chr11… false   TMEM… ENST0000031… true      Downstream     
#> 15 14    1     3     chr11… false   RPL5… ENST0000046… true      Downstream     
#> 16 15    1     3     chr11… false   ARCN1 ENST0000026… true      Downstream     
#> 17 16    2     4     chr19… true    C19o… ENST0000032… true      Downstream     
#> 18 17    2     4     chr19… true    CCNE1 ENST0000026… true      Upstream       
#> 19 18    3     5     chr19… true    C19o… ENST0000032… true      Upstream       
#> 20 19    3     5     chr19… true    CCNE1 ENST0000026… true      Downstream     
#> # ℹ 13 more variables: disruptive <chr>, reportedStatus <chr>,
#> #   undisruptedCopyNumber <dbl>, regionType <chr>, codingType <chr>,
#> #   biotype <chr>, exonicBasePhase <dbl>, nextSpliceExonRank <dbl>,
#> #   nextSpliceExonPhase <dbl>, nextSpliceDistance <dbl>, totalExonCount <dbl>,
#> #   exonUp <dbl>, exonDown <dbl>
```
