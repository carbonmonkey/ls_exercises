=begin
- input is an integer
- output is a string identifying the integer as abundant, perfect, or deficient

rules:
- Aliquot sum is the sum of a numbers positive divisors excluding the number itself
  - if it's equal to the number, the number is perfect
  - if it's greater than the number, it's abundant
  - if less than the number, it's deficient

examples/test cases:
- PerfectNumber class has a classify class method
- this method takes an integer argument and classifies it
- raises a standard error if input is negative

15 / 2
15 / 3 = 5 (divisor and quotient are factors)
- a number is not divisible past 1/2 the number
- take the divisor and quotient up until the divisor is greater than the square root of the dividend

data structures:
- integer

- conditional

- string (classification)

algorithm:
- module method PerfectNumber::classify
  - get the factors of a number and sum them
  - return the appropriate string by comparing the sum and the number

- helper method ::factors
  - create an array with 1 for the first factor
  - get the square root of the number and save it
  - iterate from 2 up to the square root
    - if the number is evenly divisible by the current divisor:
      - add the divisor and quotient to the array of factors
  - remove duplicates from the array
  - return the array of factors
=end

class PerfectNumber
  def self.classify(number)
    raise StandardError.new "Must be a positive number" unless number > 0
    case factors(number).sum <=> number
    when -1 then 'deficient'
    when 0  then 'perfect'
    else         'abundant'
    end
  end

  class << self
    private

    def factors(number)
      factors = [1]
      sqrt = Math.sqrt(number)
      (2..sqrt).each do |divisor|
        next unless number % divisor == 0
        factors << divisor << number / divisor
      end
      factors.uniq
    end
  end
end
