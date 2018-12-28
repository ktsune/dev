require 'minitest/pride'

module Hamming
  def self.compute(dna1, dna2)
    raise ArgumentError, "The strands are different lengths." unless dna1.length == dna2.length

    [dna1, dna2].map(&:chars).reduce(&:zip).count { |a,b| a != b }

  end
end
