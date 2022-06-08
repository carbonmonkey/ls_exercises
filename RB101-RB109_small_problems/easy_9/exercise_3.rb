=begin
Always Return Negative

Write a method that takes a number as an argument. If the argument is a positive
number, return the negative of that number. If the number is 0 or negative, return
the original number.

**problem**

- input is an integer
  - may be positive, negative, or zero
- output is an integer
  - original number if 0 or negative
  - if input is positive, return negative of that number

**examples**

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

**data structures**

- integers

**algorithm**

- if the number is positive multiply it by -1
- return the number
=end

def negative(num)
  num.negative? ? num : num * -1
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0 
