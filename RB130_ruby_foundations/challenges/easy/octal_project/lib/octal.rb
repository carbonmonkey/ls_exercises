=begin
problem:
input is an octal string
output is a decimal(integer)

rules:
- octal numbers are base 8
- starting at the rightmost digit, multiply it by 8^0
- increase the power by 1 for each consecutive digit
- nth digit multiplied by 8^n-1
- the resulting values from each digit are summed
- invalid input is octal 0

examples/test cases

  233 # octal
= 2*8^2 + 3*8^1 + 3*8^0
= 2*64  + 3*8   + 3*1
= 128   + 24    + 3
= 155

- constructor method takes a string argument and saves it
- to_decimal instance method converts to decimal
- any input with a character that is not 0-7 is invalid and returns 0

data structures:
string

array for validation


integer

algorithm:
- constructor method that takes an argument and saves it

- to_decimal method:
  - return 0 if the string is not valid(helper method)
  - split the string into characters
  - reverse the characters
  - iterate through each char with index
    - multiply 8 to the power of the current index
    - convert the current char to a digit
    - multipy the current digit by the result of the previous operation
    - place the result into a result array
  - sum the result array, and return the result


- valid method that checks if string represents octal number:
  - check if all characters are included in reference array
  - return true or false accordingly
=end

class Octal
  def initialize(octal_string)
    @octal_string = octal_string
  end

  def to_decimal
    return 0 unless valid?
    @octal_string.chars.reverse.map.with_index do |char, idx|
      char.to_i * (8**idx)
    end.sum
  end

  private

  def valid?
    @octal_string.chars.all?('0'..'7')
  end
end