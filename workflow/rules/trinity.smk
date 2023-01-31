rule trinity:
    input:
        fwd = INPUTDIR + "{sample}_R1.fastq.gz",
        rev = INPUTDIR + "{sample}_R2.fastq.gz"
    output:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta"
    params:
        assembly_dir = ASSEMBLY_DIR + "{sample}_trinity"
    threads: config["trinity"]["cpus"]
    resources:
        mem_gb = config["trinity"]["memory"]
    log:
        log_file = LOG_DIR + "{sample}.Trinity.log"
    shell:
        """
        Trinity --seqType fq --left {input.fwd} --right {input.rev} --output {params.assembly_dir} --CPU {threads} \
        --max_memory {resources.mem_gb} --full_cleanup > {log.log_file}
        """
