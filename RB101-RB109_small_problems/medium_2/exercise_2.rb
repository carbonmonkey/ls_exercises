=begin
input is a a word
output is a boolean
- there is a given set of spelling blocks
- each spelling block has two letters
- a word is valid if it can be spelled using the letters in the block
  - both letters cannot be used from the block
  - each block can only be used once

ex:
blocks:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

'BATCH' -- > B - B:O
             A - N:A
             T - G:T
             C - C:P
             H - H:U

ds:

string    blocks(arr)   conditional            bool

algo:
- iterate through the chars in the string
  - iterate through the array of block strings
    - if the char is not included in any of the blocks:
      - return false
  - remove the bock with the matching char from the blocks array
- return true if all letters are included

=end

def block_word?(word)
  blocks = %w(
    B:O X:K D:Q C:P N:A
    G:T R:E F:S J:W H:U
    V:I L:Y Z:M
  )

  word.chars.all? do |char|
    unused_blocks = blocks
    blocks = blocks.reject { |block| block.include?(char.upcase) }
    unused_blocks != blocks
  end
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
