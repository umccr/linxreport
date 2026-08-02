# Read LINX VisGeneExon File

Reads the `linx.vis_gene_exon.tsv` file.

## Usage

``` r
linx_visgeneexon_read(x)
```

## Arguments

- x:

  Path to `linx.vis_gene_exon.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_gene_exon.tsv", package = "linxreport")
(l <- linx_visgeneexon_read(x))
#> # A tibble: 47 × 8
#>    ClusterId Gene  Transcript    Chrom AnnotationType ExonRank ExonStart ExonEnd
#>    <fct>     <chr> <chr>         <chr> <chr>             <dbl>     <dbl>   <dbl>
#>  1 1         KMT2A ENST00000534… 11    FUSION                1 118436492  1.18e8
#>  2 1         KMT2A ENST00000534… 11    FUSION                2 118468775  1.18e8
#>  3 1         KMT2A ENST00000534… 11    FUSION                3 118471662  1.18e8
#>  4 1         KMT2A ENST00000534… 11    FUSION                4 118476805  1.18e8
#>  5 1         KMT2A ENST00000534… 11    FUSION                5 118477967  1.18e8
#>  6 1         KMT2A ENST00000534… 11    FUSION                6 118480174  1.18e8
#>  7 1         KMT2A ENST00000534… 11    FUSION                7 118481715  1.18e8
#>  8 1         KMT2A ENST00000534… 11    FUSION                8 118482422  1.18e8
#>  9 1         KMT2A ENST00000534… 11    FUSION                9 118484183  1.18e8
#> 10 1         KMT2A ENST00000534… 11    FUSION               10 118484862  1.18e8
#> # ℹ 37 more rows
```
