rule trinity_stats:
    input:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta"
    output:
        stats = STATS_DIR + "{sample}_Trinity_stats.txt"
    params:
        scrpt = config["scripts"]["stats_script"]
    shell:
        "{params.scrpt} {input.assembly} > {output.stats}"