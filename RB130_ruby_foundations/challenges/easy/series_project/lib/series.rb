=begin
problem:
- input is a string of digits
- output is all possible consecutive number series of a certain length

rules:
- if the series is longer than the string, throw an error

examples/test cases:
01234
3 digit --> 012, 123, 234
4 digit --> 0123, 1234

test cases show:
- there is a Series class
- a constructor that takes a string of digits
- a #slices method that takes a length and returns series of numbers of that length
  - returns a nested array, with each series being an array of integers
  - raises an ArgumentError if the series length is greater than the string length

data stuctures:
- string(digits)
- integer(length)

- array of digits

- array of series arrays

algorithm:
- create a Series class
- create a constructor method that takes a string and saves it

- #slices:
  - raise an error if the argument is greater than the string length
  - split the string into characters
  - convert the chars into integers
  - iterate through slices of the array of the specified length
    - place the the current slice into a result array
  - return the result array
=end

class Series
  def initialize(digits)
    @digits = digits
  end

  def slices(length)
    raise ArgumentError.new "specified length too long" if length > @digits.size
    result = []
    digits_arr = @digits.chars.map(&:to_i)
    digits_arr.each_cons(length) do |series|
      result << series
    end

    result
  end
end
