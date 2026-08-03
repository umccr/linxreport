# Generate LINX HTML Report

Generates a LINX HTML report. It does so with the following steps:

1.  recursively copy the table and plot directories into tmp/plot and
    tmp/table

2.  copy the rmd into tmp/linx.Rmd

3.  render the rmd inside tmp/

4.  return the path to the output HTML

## Usage

``` r
linx_rmd(sample, table_dir, plot_dir, out_file = NULL, quiet = FALSE)
```

## Arguments

- sample:

  Name of sample.

- table_dir:

  Path to LINX table directory.

- plot_dir:

  Path to LINX plot directory.

- out_file:

  Path to output HTML file (needs '.html' suffix).

- quiet:

  Suppress printing during rendering.

## Value

Path to rendered HTML report.

## Examples

``` r
d <- system.file("extdata", package = "linxreport")
outd <- tempdir()
linx_rmd(
  sample = "subject_a.tumor",
  table_dir = file.path(d, "tables"),
  plot_dir = file.path(d, "plots"),
  out_file = file.path(outd, "test1.html"),
  quiet = FALSE
)
#> 
#> 
#> processing file: linxreport.Rmd
#> 1/75                      
#> 2/75 [knitr_opts]         
#> 3/75                      
#> 4/75 [load_pkgs]          
#> 5/75                      
#> 6/75 [funcs]              
#> 7/75                      
#> 8/75 [read_tables]        
#> 9/75                      
#> 10/75 [svs0]               
#> 11/75                      
#> 12/75 [svs]                
#> 13/75                      
#> 14/75 [blank2]             
#> 15/75                      
#> 16/75 [breakend0]          
#> 17/75                      
#> 18/75 [breakend]           
#> 19/75                      
#> 20/75 [clusters0]          
#> 21/75                      
#> 22/75 [clusters]           
#> 23/75                      
#> 24/75 [links0]             
#> 25/75                      
#> 26/75 [links]              
#> 27/75                      
#> 28/75 [fusion0]            
#> 29/75                      
#> 30/75 [fusion]             
#> 31/75                      
#> 32/75 [drivercatalog0]     
#> 33/75                      
#> 34/75 [drivercatalog]      
#> 35/75                      
#> 36/75 [drivers0]           
#> 37/75                      
#> 38/75 [drivers]            
#> 39/75                      
#> 40/75 [vis_copy_number0]   
#> 41/75                      
#> 42/75 [vis_copy_number]    
#> 43/75                      
#> 44/75 [blank1]             
#> 45/75                      
#> 46/75 [vis_fusion0]        
#> 47/75                      
#> 48/75 [vis_fusion]         
#> 49/75                      
#> 50/75 [vis_gene_exon0]     
#> 51/75                      
#> 52/75 [vis_gene_exon]      
#> 53/75                      
#> 54/75 [vis_protein_domain0]
#> 55/75                      
#> 56/75 [vis_protein_domain] 
#> 57/75                      
#> 58/75 [vis_segments0]      
#> 59/75                      
#> 60/75 [vis_segments]       
#> 61/75                      
#> 62/75 [vis_sv_data0]       
#> 63/75                      
#> 64/75 [vis_sv_data]        
#> 65/75                      
#> 66/75 [plot_chrom]         
#> 67/75                      
#> 68/75 [plot_cluster]       
#> 69/75                      
#> 70/75 [session_info1]      
#> 71/75                      
#> 72/75 [session_info2]      
#> 73/75                      
#> 74/75 [report_inputs]      
#> 75/75                      
#> output file: linxreport.knit.md
#> /opt/hostedtoolcache/pandoc/3.8.3/x64/pandoc +RTS -K512m -RTS linxreport.knit.md --to html4 --from markdown+autolink_bare_uris+tex_math_single_backslash --output /tmp/RtmpxrfVkE/test1.html --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/pagebreak.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/latex-div.lua --lua-filter /home/runner/work/_temp/Library/rmarkdown/rmarkdown/lua/table-classes.lua --embed-resources --standalone --variable bs3=TRUE --section-divs --template /home/runner/work/_temp/Library/rmarkdown/rmd/h/default.html --syntax-highlighting none --variable highlightjs=1 --include-before-body /tmp/RtmpxrfVkE/linxreport/_navbar.html --variable navbar=1 --variable theme=cosmo --css style.css --mathjax --variable 'mathjax-url=https://mathjax.rstudio.com/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML' --include-in-header /tmp/RtmpxrfVkE/rmarkdown-str1a561edba0ce.html --variable source_embed=linxreport.Rmd --include-after-body /tmp/RtmpxrfVkE/file1a562d0a03ef.html --variable code_menu=1 
#> 
#> Output created: /tmp/RtmpxrfVkE/test1.html
```
