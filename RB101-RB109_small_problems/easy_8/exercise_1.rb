=begin
Sum of Sums

Write a method that takes an Array of numbers and then returns
the sum of the sums of each leading subsequence for that Array.
You may assume that the Array always contains at least one number.

**problem**

- input is an array of numbers
  - contains at least one number
  - numbers are positive integers
- ouput is an integer
  - the sum of the sums of each leading subsequence for the input array
  - not the same as a running total
  - the first number + (first number + second number) + (first + second + third numbers)...

**examples**

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

**data structures**

--> array --> integer

**algorithm**

- create a sum variable and set it to 0
**loop**
- get a number from input array
- add it to the value of all prevoius numbers in the array summed
- add the result to the sum variable
- repeat until the end of the input array is reached
**end loop**
- return the sum variable

=end

# def sum_of_sums(numbers)
#   sum = 0
#   numbers.each_with_index do |_, index|
#     sum += numbers[0..index].sum
#   end

#   sum
# end

# def sum_of_sums(numbers)
#   numbers.map.with_index do |_, index|
#     numbers[0..index].sum
#   end.sum
# end

# def sum_of_sums(numbers)
#   running_total = 0
#   running_totals_sum = 0

#   for num in numbers
#     running_total += num
#     running_totals_sum += running_total
#   end

#   running_totals_sum
# end

# def sum_of_sums(numbers)
#   total = 0
#   until numbers.empty?
#     total += numbers.sum
#     numbers.pop
#   end
#   total
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
p sum_of_sums([2, 18, 31, 47, 2]) == 271
