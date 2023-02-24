=begin
problem:
- DNA class with a hamming_distance instance method
- a DNA object has a strand
- hamming distance is called on DNA object and passed a strand as an argument(string)
  - compares the DNA objects strand with the strand argument
  - returns the number of differences between the strands

rules:
- if the strands are different lengths, compute the difference over the shorter length

ex:
Test cases show that:
- the extra length is ignored on the longer strand if the strands aren't equal
- a DNA objects strand is not mutated by the hamming_distance method
- two empty strands return 0

GGACG
GGTCG
  ^   --> 1

data structures
strings

array of strands

integer(count of differences)

algorthim:
- iterate through the shorter strand
  - count the differences at the same index in the longer strand
- return the difference
=end

class DNA
  def initialize(strand)
    @strand = strand
  end

  def hamming_distance(strand)
    shorter, longer = [@strand, strand].sort_by(&:size)
    idx = -1
    shorter.chars.count do |base|
      idx += 1
      base != longer[idx]
    end
  end
end
