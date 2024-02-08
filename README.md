---
output:
  github_document:
    toc: true
knit: (knitr::knit)
---

<!-- README.md is generated from README.Rmd. Please edit that file -->



# 🕸  linxreport - LINX HTML Reporter

`{linxreport}` is an R package for generating a HTML report with
results from the `LINX` structural variant tool from the Hartwig
Medical Foundation - see documentation for LINX at
<https://github.com/hartwigmedical/hmftools/tree/master/linx>.

For useful functions for parsing and processing `LINX` results,
see the `{linxreport}` vignette at
<https://umccr.github.io/linxreport/articles/linx.html>.

> [!NOTE]
> {linxreport} does not run any analyses!
> It simply parses the outputs from LINX
> and displays them in tables and tabs. No optimisations are performed.

> [!CAUTION]
> The HTML report size depends on the number of LINX plots!
> We have encountered samples with hundreds of plots which has resulted in
> HTML files in excess of 200Mb in size.

## 📦 Installation

- Install current `main` version from GitHub with:

```r
remotes::install_github("umccr/linxreport")
```

- Or if used inside a conda environment:

```bash
conda install r-linxreport -c conda-forge -c bioconda
```

## 💻 CLI {#id_-cli}

A `linxreport.R` command line interface is available for convenience.

> [!TIP]
> If you're using the conda package, the `linxreport.R` command will already be set up
> inside an activated conda environment.
> If you're _not_ using the conda package, you need to export the
> `linxreport/inst/cli/` directory to your `PATH` in order to use `linxreport.R`.


```bash
linxr_cli=$(Rscript -e 'x <- system.file("cli", package = "linxreport"); cat(x, "\n")' | xargs)
export PATH="${linxr_cli}:${PATH}"
```


```
linxreport.R --version
0.1.0 

linxreport.R --help
Usage
=====
 
/Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library/linxreport/cli/linxreport.R [options]


Options
=======
--sample=SAMPLE
		Sample name (REQUIRED).

--plot=PLOT
		Path to LINX plot directory (REQUIRED).

--table=TABLE
		Path to LINX table directory (REQUIRED).

--out=OUT
		HTML output file name [def: linx_{sample}.html].

--quiet
		Suppress log printing during rendering.

--version, -v
		Print version and exit.

--help, -h
		Show this help message and exit
```
