# Read LINX VisProteinDomain File

Reads the `linx.vis_protein_domain.tsv` file.

## Usage

``` r
linx_visproteindomain_read(x)
```

## Arguments

- x:

  Path to `linx.vis_protein_domain.tsv` file.

## Value

The input file as a tibble.

## Examples

``` r
x <- system.file("extdata/tables/subject_a.tumor.linx.vis_protein_domain.tsv", package = "linxreport")
(l <- linx_visproteindomain_read(x))
#> # A tibble: 15 × 6
#>    ClusterId Transcript      Chrom     Start       End Info         
#>    <fct>     <chr>           <chr>     <int>     <int> <chr>        
#>  1 1         ENST00000534358 11    118436492 118436512 5-Prime UTR  
#>  2 1         ENST00000534358 11    118478078 118480195 ZF_CXXC      
#>  3 1         ENST00000534358 11    118484946 118488738 ZF_PHD_2     
#>  4 1         ENST00000534358 11    118488729 118490165 ZF_PHD_2     
#>  5 1         ENST00000534358 11    118491211 118491829 ZF_PHD_2     
#>  6 1         ENST00000534358 11    118493186 118494379 BROMODOMAIN_2
#>  7 1         ENST00000534358 11    118496342 118499307 EPHD         
#>  8 1         ENST00000534358 11    118499842 118501084 FYRN         
#>  9 1         ENST00000534358 11    118510084 118519753 FYRC         
#> 10 1         ENST00000534358 11    118521305 118522133 SET          
#> 11 1         ENST00000534358 11    118522157 118522205 POST_SET     
#> 12 1         ENST00000534358 11    118522173 118526832 3-Prime UTR  
#> 13 1         ENST00000380338 9      20341669  20346442 3-Prime UTR  
#> 14 1         ENST00000380338 9      20448125  20622253 YEATS        
#> 15 1         ENST00000380338 9      20622257  20622499 5-Prime UTR  
```
