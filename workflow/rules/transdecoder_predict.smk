rule transdecoder_predict:
    input:
        assembly = ASSEMBLY_DIR + "{sample}_trinity.Trinity.fasta",
        blastp_hits = BLASTP_DIR + "{sample}_blastp.outfmt",
        pfam_hits = HMMSCAN_DIR + "{sample}_pfam.domtblout"
    output:
        output_pep = "{sample}_trinity.Trinity.fasta.transdecoder.pep"
    run:
        shell("TransDecoder.Predict -t {input.assembly} --retain_blastp_hits {input.blastp_hits} --retain_pfam_hits {input.pfam_hits}")

        
         
        
        


