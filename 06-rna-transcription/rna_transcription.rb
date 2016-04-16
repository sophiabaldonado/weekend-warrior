class Complement

  TRANSCRIBE = {
    "G" => "C",
    "C" => "G",
    "T" => "A",
    "A" => "U"
  }

  def self.of_dna(dna)
    raise ArgumentError, "Invalid DNA nucleotide!" unless dna.split(//).all? { |nuc| nuc.match(/[GCTA]/) }
    dna.split(//).map { |nuc| TRANSCRIBE[nuc] }.join
  end

  def self.of_rna(rna)
    raise ArgumentError, "Invalid RNA nucleotide!" unless rna.split(//).all? { |nuc| nuc.match(/[GCUA]/) }
    rna.split(//).map { |nuc| TRANSCRIBE.invert[nuc] }.join
  end

end
