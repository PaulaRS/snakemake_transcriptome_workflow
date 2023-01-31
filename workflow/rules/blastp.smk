rule blastp:
    input:
        orfs = "{sample}_trinity.Trinity.fasta.transdecoder_dir/longest_orfs.pep",
        blastdb = config["databases"]["swiss_prot"]
    output:
        output_file = BLASTP_DIR + "{sample}_blastp.outfmt"
    threads: config["blastp"]["cpus"]
    shell:
        "blastp -query {input.orfs} -db {input.blastdb} -max_target_seqs 1 -outfmt 6 -evalue 1e-5 -num_threads {threads} > {output.output_file}"