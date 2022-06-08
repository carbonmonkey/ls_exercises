=begin
Reverse the Digits In a Number

Write a method that takes a positive integer as an argument and returns
that number with its digits reversed.
Don't worry about arguments with leading zeros - Ruby sees those as octal numbers,
which will cause confusing results. For similar reasons, the return value for our
fourth example doesn't have any leading zeros.

**problem**

- input is a positive integer
- output is the integer with its digits reversed
  - output will not have leading zeros

**examples**

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

**data structure**

- integer --> array --> string --> integer

**algorithm**

1. split the integer into an array of digits.
2. reverse the order of the array
3. join the digits into a string
4. convert the string into an integer and return the value
=end

# def reversed_number(num)
#   num.digits.join.to_i
# end

def reversed_number(num)
  num.to_s.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
