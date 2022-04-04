=begin
Write a method that takes an Array of integers as input,
multiplies all the numbers together, divides the result by
the number of entries in the Array, and then prints the result
rounded to 3 decimal places. Assume the array is non-empty.

**problem**

- input is an array of integers
- method multitlpies all numbers together
  - divides the result by length of the array
  - prints the result rounded to 3 decimal places
- array is not empty
- output is printed, interpolated into a string 

**examples**

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

**data structures**

array --> string

**algorithm**

- multiply the numbers in the array and save the result as a float
- divide the float by the length of the array and save the result
- round the result to 3 decimal places, and output the result in a string
- ouput srting includes 3 decimal places (use format)


=end

def show_multiplicative_average(numbers)
  result = numbers.inject(:*) / numbers.size.to_f
  puts "The result is #{format('%.3f', result)}"
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
