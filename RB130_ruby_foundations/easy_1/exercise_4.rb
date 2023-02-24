=begin
problem:
- input is a positive integer
- output is an array of all divisors of the input
rules:
- output can be in any sequence

ex:
- provided

ds:
integer

range
iterator

array of divisors

algo:
- start at 1, and interate up to the input
  - if the input is divisible by the current number, add it to an array
- return the array

algo2:
- start at 1, and iterate up to half of the input
  - if the input is divisible by the current number, add it to an array
- check the multilples of each number in the array
=end

# def divisors(num)
#   (1..num).select { |div| num % div == 0}
# end

def divisors(dividend)
  divisors = []
  quotients = []

  (1..Math.sqrt(dividend)).each do |divisor|
    quotient, remainder = num.divmod(divisor)
    if remainder == 0
      divisors << divisor
      quotients.unshift(quotient) unless divisor == quotient
    end
  end

  divisors + quotients
end

p divisors(1) == [1]
p divisors(7) == [1, 7]
p divisors(12) == [1, 2, 3, 4, 6, 12]
p divisors(98) == [1, 2, 7, 14, 49, 98]
p divisors(99400891) == [1, 9967, 9973, 99400891] # may take a minute
p divisors(999962000357) == [1, 999979, 999983, 999962000357]
p divisors(9)