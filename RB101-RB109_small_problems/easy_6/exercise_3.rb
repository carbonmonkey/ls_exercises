# Fibonacci Number Location By Length

=begin
**Problem**
- Fibonacci series is a series of numbers
  - first two numbers are one
  - each subsequent number is the sum of previous two numbers
  - the first number has a index of 1
- input is an integer
  - represents the number of digits of a number in the sequence
  - always 2 or more
- output is an integer
  - represents the index of the first number in the sequence with 
  the amount of digits specified by the input

fib-num -->   1, 1, 2, 3, 5, 8, 13, 21
index-num --> 1, 2, 3, 4, 5, 6, 7,  8

**examples**
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

**Data Structures**
- array?

**Algorithm**

- create an array for the sequence with the elements of first 2 
  numbers in the sequence
- add the last two numbers in the array and save it as the current
  number
- add the current number to the end of the array
- repeat the previous two steps until the last number in the array
  has the number of digits specified by the input integer
- return the length of the array
=end

def find_fibonacci_index_by_length(number_of_digits)
  sequence = [1, 1]

    until sequence.last.digits.size >= number_of_digits
      sequence << sequence.last(2).sum
    end

  sequence.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
