=begin
Counting Up

Write a method that takes an integer argument, and returns an Array of all integers,
in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

**problem**

- input is an integer
- output is an array
  - contains all integers between 1 and the input integer
- input will always be an integer greater than 0

**examples**

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

**data structures**

- range --> array

**algorithm**

- create a range starting at 1 and ending at the input integer
- convert the range into an array
- return the array
=end

def sequence(num)
  num_arr = (1..num.abs).to_a

  num.negative? ? num_arr.map { |i| -i } : num_arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1) == [-1]
p sequence(-7) == [-1, -2, -3, -4, -5, -6, -7]
p sequence(0)
