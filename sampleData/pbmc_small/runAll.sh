#!/bin/bash
set -e
../../src/cbScanpy -e exprMatrix.tsv.gz -o scanpyout -n pbmcSmall 
../../src/cbImportScanpy -i scanpyout/anndata.h5ad -o importScanpyOut
../../src/cbSeurat -e exprMatrix.tsv.gz -o seuratOut -n pbmcSmallSeurat
../../src/cbImportSeurat2 -i seurat2.rds -o importSeuratOut
