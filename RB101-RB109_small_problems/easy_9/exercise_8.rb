=begin
Sequence Count

Create a method that takes two integers as arguments. The first argument is a count,
and the second is the first number of a sequence that your method will create. The
method should return an Array that contains the same number of elements as the count
argument, while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while
the starting number can be any integer value. If the count is 0, an empty list should
be returned.

**problem**

- input is two integers
  - a count and the first number of a sequence
- the output is an array
  - contains the number of elements specified by the count argument
  - the values will be multiples of the starting number argument
  - if the count argument is 0, an empty array is returned
  - the multiples are increased sequentially by the starting number argument
    - 3 --> 6 --> 9...
- the count will always be 0 or greater
- the starting value can be any integer

**examples**

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

**data structures**

- integers --> array

**algorithm**

- create an empty array for the result
- add the the appropriate numbers to the array
  - set the current number to 0
    **loop*
    - increment the value of the current number by the starting number
    - add the current number to the array
    - repeat until the result array has the correct number of integers
    **end loop**
- return the result array
=end

# def sequence(count, start_num)
#   result = []
#   current_num = 0
  
#   count.times do |_|
#     current_num += start_num
#     result << current_num
#   end

#   result
# end

# def sequence(count, start_num)
#   result = Array.new(count)
#   current_num = 0
#   result.map { |_| current_num += start_num }
# end

def sequence(count, start_num)
  sequence = []

  count.times do |i|
    sequence << start_num * (i + 1)
  end

  sequence
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
