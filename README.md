# snakemake_transcriptome_workflow

Reusable workflow for de novo transcriptome assembly for paired-end reads, protein prediction, annotation and quality checks.
Includes:
 - Quality check (fastqc)
 - De novo transcriptome assembly (Trinity)
 - Assembly quality checks (with bowtie2 and support scripts from Trinity)
 - Prediction of open reading frames (Transdecoder)
 - Functional annotation (with blastp and hmmer)

This project uses Snakemake Python:
https://snakemake.readthedocs.io/en/stable/index.html

Example command lines:

Run
> snakemake --configfile <config.yaml> --cores <max_n_cores> -p --use-conda

Dry-run
> snakemake -np --configfile <config.yaml> --use-conda

Generate pipeline diagram 
> snakemake --configfile <config.yaml> --dag | dot -Tsvg > dag.svg --use-conda
