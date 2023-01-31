rule transdecoder_longorfs:
    input:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta"
    output:
        output_file = "{sample}_trinity.Trinity.fasta.transdecoder_dir/longest_orfs.pep"
    shell:
        "TransDecoder.LongOrfs -t {input.assembly}"