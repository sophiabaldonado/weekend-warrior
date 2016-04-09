class Hamming
  # def self.compute(first, second)
  #   raise ArgumentError, 'The strands must be the same length' unless first.length == second.length
  #   first.split(//).zip(second.split(//)).find_all { |letters| letters[0] != letters[1] }.length
  # end

  def self.compute(first, second)
    raise ArgumentError, 'The strands must be the same length' unless first.length == second.length
    first.chars.zip(second.chars).find_all { |letters| letters[0] != letters[1] }.length
  end
end
