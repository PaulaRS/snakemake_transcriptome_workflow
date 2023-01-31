rule gene_trans_map:
    input:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta"
    output:
        map = MAP_DIR + "{sample}_gene_trans_map.txt"
    params:
        scrpt = config["scripts"]["map_script"]
    shell:
        "{params.scrpt} {input.assembly} > {output.map}"