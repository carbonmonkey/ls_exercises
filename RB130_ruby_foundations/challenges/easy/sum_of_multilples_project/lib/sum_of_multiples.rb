=begin
problem:
- inputs are a natural number and an optional set of numbers
- output is the sum of all multiples of the numbers in the set that are less than the first number
rules:
- if a set of numbers is not given, use 3 and 5
- duplicate factors are disregarded

examples/test cases:
- There is a SumOfMultiples class
- a ::to class method that takes a number argument and performs the calculation
- a constructor method that takes multiple number arguments
- a #to method that uses the set of numbers associated with the object to replace the default factors
- there are no test cases for exceptions
- if there are no valid multiples, return 0

data structures:
integer
set of integers
array for set
array for multiples

integer(sum of multiples)

algorithm:
- constructor:
  - save the argument set as an array

- ::to
  - takes a number argument
  - instantiates a SumOfMultiples object passing 3 and 5 as arguments
  - invokes the #to method on the object with original number argument

- #to
  - iterate from 1 to the input number -1
    - check if the current number is divisible by any number in the set(helper)
    - if so, add it to an array of multilples
  - sum the array of multiples

- #valid_multiple?
  - iterate through the set array
    - return true if any number in the set is a multiple of the current number
=end

class SumOfMultiples
  def initialize(*set)
    @set = set.empty? ? [3, 5] : set
  end

  def to(num)
    (1...num).select do |multiple|
      valid_multiple?(multiple)
    end.sum
  end

  def self.to(num)
    SumOfMultiples.new.to(num)
  end

  private

  def valid_multiple?(multiple)
    @set.any? { |num| multiple % num == 0 }
  end
end
