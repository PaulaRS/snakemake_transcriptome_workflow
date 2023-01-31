# snakemake_transcriptome_workflow

This workflow is designed to do de novo transcriptome assemblies for paired-end reads and downstream analyses.
It does:
 - Quality check (fastqc)
 - De novo transcriptome assembly (Trinity)
 - Transcriptome assembly quality (with bowtie2 and support scripts from Trinity)
 - Coding domains prediction (Transdescoder)
 - Functional annotation (with blastp and hmmer)

This project has been implemented in Snakemake Python
https://snakemake.readthedocs.io/en/stable/index.html

Example command line :
> snakemake --configfile <config.yaml> --cores <max_n_cores> --use-conda

Dry-run:
> snakemake -np --configfile <config.yaml>

To generate the pipeline diagram:
> snakemake --configfile <config.yaml> --dag | dot -Tsvg > dag.svg
