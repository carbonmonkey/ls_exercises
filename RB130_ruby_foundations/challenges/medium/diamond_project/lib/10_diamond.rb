=begin
problem
- input is a capital letter
- ouput is a diamond shape

rules:
- the first and last rows contain one A each
- all other rows have 2 identical letters
- the diamond is vertically and horizontally symmetric
  - the longest is as wide as the number of lines tall it is
- top half is in ascending order
- bottom half is in descending order

examples/test cases:

"    A    \n"\ spaces between letters start at 1 on the second line
"   B1B   \n"\ increase by 2 each consecutive line
"  C123C  \n"\
" D12345D \n"\ each line is of equal length and ends with \n
"E1234567E\n"\
" D     D \n"\
"  C   C  \n"\
"   B B   \n"\
"    A    \n"

- the length and hight are equal to the letter's position in the alplabet doubled - 1
- half of the triangle can be made and then reversed for the second half
- there is a Diamond class
- the ::make_diamond class method takes a letter argument and returns a string

data structures:
string

array of lines

string

algorithm:
- ::make_diamond
  - find the dimensions using the letter(helper?)
  - create an array for lines with an A string centered on the dimension
  - set a space multiplier to 1
  - iterate from B up to the letter
    - create a string with the current letter separated by the space multiplier
    - add the string to a result array
    - increment the spaces by 2
  - add the result array minus the last line, reversed, to itself
  - joint the array with a newline between each string, and add a newline to the end
  - return the resulting string

- find dimensions
  - create an array of the letters in the alphabet
  - find the index number for the letter
  - add 1, double the sum, then subtract 1
  - return the difference
=end

# class Diamond
#   LETTERS = ('A'..'Z').to_a

#   def self.make_diamond(letter)
#     dimension = calculate_dimension(letter)
#     first_half = ['A'.center(dimension)] + half_diamond(letter, dimension)
#     (first_half + (first_half[0..-2].reverse)).join("\n") + "\n"
#   end

#   def self.half_diamond(letter, dimension)
#     spaces = -1
#     'B'.upto(letter).map do |current_letter|
#       spaces += 2
#       "#{current_letter}#{' ' * spaces}#{current_letter}".center(dimension)
#     end
#   end

#   def self.calculate_dimension(letter)
#     ((LETTERS.index(letter) + 1) * 2) - 1
#   end
# end

class Diamond
  LETTERS = ('A'..'Z').to_a

  def initialize(letter)
    @letter = letter
    @dimension = calculate_dimension
    @spaces = -1
  end

  def self.make_diamond(letter)
    Diamond.new(letter).to_s
  end

  def to_s
    to_a.join("\n") + "\n"
  end

  private

  def to_a
    first_half = [create_first_line] + create_lines
    first_half + first_half[0..-2].reverse
  end

  def create_lines
    spaces = -1
    'B'.upto(@letter).map do |let|
      spaces += 2
      (let + ' ' * spaces + let).center(@dimension)
    end
  end

  def create_first_line
    'A'.center(@dimension)
  end

  def calculate_dimension
    ((LETTERS.index(@letter) + 1) * 2) - 1
  end
end