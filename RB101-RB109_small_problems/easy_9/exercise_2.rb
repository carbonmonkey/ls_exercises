=begin
Double Doubles

A double number is a number with an even number of digits whose left-side digits
are exactly the same as its right-side digits. For example, 44, 3333, 103103, 7676
are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the
argument is a double number; double numbers should be returned as-is.

**problem**

- input is a positive integer
- output is double the input integer
  - unless input integer is a double number, then output is the same as input
- a double number has:
  - an even number of digits
  - left-side same as right side

**examples**

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

**data structures**

- integer --> string --> integer

**algorithm**

- convert the input into a string
- if the string has an even number of characters
  - split the string in half and compare the halves
  - return the original integer if the string halves are the same
- return the result of multiplying the input integer by 2
=end

def twice(num)
  num_str = num.to_s
  mid_idx = num_str.length / 2

  left_side, right_side = num_str[0...mid_idx], num_str[mid_idx..-1]

  return num if left_side == right_side

  num * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
