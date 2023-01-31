rule fastqc:
    input:
        fwd = INPUTDIR + "{sample}_R1.fastq.gz",
        rev = INPUTDIR + "{sample}_R2.fastq.gz"
    output:
       zip1 = FASTQC_DIR + "{sample}_R1_fastqc.zip",
       zip2 = FASTQC_DIR + "{sample}_R2_fastqc.zip"
    params:
        fastqc_dir = FASTQC_DIR
    threads: 2
    run:
        shell("mkdir -p {params.fastqc_dir}")
        shell("fastqc {input.fwd} {input.rev} -t {threads} -o {params.fastqc_dir}")