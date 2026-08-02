# Read LINX VisFusion File

Reads the `linx.vis_fusion.tsv` file.

## Usage

``` r
linx_visfusion_read(x)
```

## Arguments

- x:

  Path to `linx.vis_fusion.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_fusion.tsv", package = "linxreport")
(l <- linx_visfusion_read(x))
#> # A tibble: 1 × 16
#>   ClusterId Reportable GeneNameUp TranscriptUp    ChrUp     PosUp StrandUp
#>       <dbl> <chr>      <chr>      <chr>           <chr>     <dbl>    <dbl>
#> 1         1 true       KMT2A      ENST00000534358 chr11 118484974        1
#> # ℹ 9 more variables: RegionTypeUp <chr>, FusedExonUp <dbl>,
#> #   GeneNameDown <chr>, TranscriptDown <chr>, ChrDown <chr>, PosDown <dbl>,
#> #   StrandDown <dbl>, RegionTypeDown <chr>, FusedExonDown <dbl>
```
