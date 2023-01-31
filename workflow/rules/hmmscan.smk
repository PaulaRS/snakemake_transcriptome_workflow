rule hmmscan:
    input:
        orfs = "{sample}_trinity.Trinity.fasta.transdecoder_dir/longest_orfs.pep",
        pfamdb = config["databases"]["pfam"]
    output:
        output_file = HMMSCAN_DIR + "{sample}_pfam.domtblout"
    threads: config["hmmer"]["cpus"]
    shell:
        "hmmscan --cpu {threads} --domtblout {output.output_file} {input.pfamdb} {input.orfs}"


