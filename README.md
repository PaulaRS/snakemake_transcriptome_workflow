# snakemake_transcriptome_workflow

Reusable workflow for de novo transcriptome assembly for paired-end reads, protein predictions, annotations and quality checks.
Includes:
 - Quality check (fastqc)
 - De novo transcriptome assembly (Trinity)
 - Assembly quality checks (with bowtie2 and support scripts from Trinity)
 - Prediction of open reading frames (Transdecoder)
 - Functional annotation (with blastp and hmmer)

This project is implemented in Snakemake Python:
https://snakemake.readthedocs.io/en/stable/index.html

Example command line :
> snakemake --configfile <config.yaml> --cores <max_n_cores> --use-conda

Dry-run:
> snakemake -np --configfile <config.yaml>

To generate the pipeline diagram:
> snakemake --configfile <config.yaml> --dag | dot -Tsvg > dag.svg
