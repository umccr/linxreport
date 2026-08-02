# Read LINX VisSvData File

Reads the `linx.vis_sv_data.tsv` file.

## Usage

``` r
linx_vissvdata_read(x)
```

## Arguments

- x:

  Path to `linx.vis_sv_data.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_sv_data.tsv", package = "linxreport")
(l <- linx_vissvdata_read(x))
#> # A tibble: 4 × 16
#>   ClusterId ChrStart ChrEnd PosStart    PosEnd ChainId  SvId Type  ResolvedType
#>   <fct>     <chr>    <chr>     <dbl>     <dbl>   <dbl> <dbl> <chr> <chr>       
#> 1 0         chr19    -1     29815664         0       1     2 SGL   SGL_PAIR_INS
#> 2 0         chr19    -1     29815665         0       2     3 SGL   SGL_PAIR_INS
#> 3 1         chr9     chr11  20414426 118484974       1     0 BND   RECIP_TRANS 
#> 4 1         chr9     chr11  20415001 118485001       2     1 BND   RECIP_TRANS 
#> # ℹ 7 more variables: IsSynthetic <chr>, OrientStart <dbl>, OrientEnd <dbl>,
#> #   InfoStart <chr>, InfoEnd <chr>, JunctionCopyNumber <dbl>,
#> #   InDoubleMinute <chr>
```
