# Generated by roxytest: do not edit by hand!

# File R/linx_vis.R: @testexamples

test_that("Function linx_viscopynumber_read() @ L15", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_copy_number.tsv", package = "linxreport")
  (l <- linx_viscopynumber_read(x))
  expect_equal(colnames(l)[ncol(l)], "BAF")
})


test_that("Function linx_visfusion_read() @ L45", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_fusion.tsv", package = "linxreport")
  (l <- linx_visfusion_read(x))
  expect_equal(colnames(l)[ncol(l)], "FusedExonDown")
})


test_that("Function linx_visgeneexon_read() @ L75", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_gene_exon.tsv", package = "linxreport")
  (l <- linx_visgeneexon_read(x))
  expect_equal(colnames(l)[ncol(l)], "ExonEnd")
})


test_that("Function linx_visproteindomain_read() @ L107", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_protein_domain.tsv", package = "linxreport")
  (l <- linx_visproteindomain_read(x))
  expect_equal(colnames(l)[ncol(l)], "Info")
})


test_that("Function linx_vissegments_read() @ L138", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_segments.tsv", package = "linxreport")
  (l <- linx_vissegments_read(x))
  expect_equal(colnames(l)[ncol(l)], "InDoubleMinute")
})


test_that("Function linx_vissvdata_read() @ L168", {
  
  x <- system.file("extdata/tables/COLO829v003T.linx.vis_sv_data.tsv", package = "linxreport")
  (l <- linx_vissvdata_read(x))
  expect_equal(colnames(l)[ncol(l)], "InDoubleMinute")
})

