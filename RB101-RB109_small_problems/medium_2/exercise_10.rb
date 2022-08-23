=begin
problem:
-input is an integer
- output is an integer
  - the difference of the square of the sum of 1 to n
    - and the sum of the squares of 1 to n

ex:
3
1 + 2 + 3 = 6 --> 6 ** 2 = 36
1 + 4 + 9 = 14
36 - 14 = 22

ds:
int       ranges            int(difference of sums)

algo:
- set the first sum to 0
- set the second value to 0
- iterate from 1 to the input
  - add each number to find the first sum
  - square and add each number to find the second value
- square the first sum to find the first value
- subtract the second value from the first
- return the difference


=end

# def sum_square_difference(num)
#   first_sum = 0
#   second_value = 0
#   for int in 1..num
#     first_sum += int
#     second_value += int ** 2
#   end
#   first_value = first_sum ** 2
#   first_value - second_value
# end

def sum_square_difference(n)
  (1..n).sum ** 2 - (1..n).map { |i| i ** 2 }.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150

