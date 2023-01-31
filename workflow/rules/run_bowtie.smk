rule run_bowtie:
    input:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta",
        fwd = INPUTDIR + "{sample}_R1.fastq.gz",
        rev = INPUTDIR + "{sample}_R2.fastq.gz"
    output:
        stats = STATS_DIR + "{sample}_align_stats.txt"
    threads: config["bowtie"]["cpus"]
    shell:
        """
        bowtie2-build {input.assembly} {input.assembly}
        bowtie2 -p {threads} -q --no-unal -k 20 -x {input.assembly} -1 {input.fwd} -2 {input.rev} 2> {output.stats}
        """