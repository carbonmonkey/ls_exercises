=begin
fizzbuzz

Write a method that takes two arguments: the first is the starting number, and the
second is the ending number. Print out all numbers between the two numbers, except
if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print
"Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

**problem**

- input is a starting number and an ending number
- output is all of the numbers printed
  - if the number is divisible by 3 and 5, print "FizzBuzz"
  - if the number is divisible by 3, print "Fizz"
  - if the number is divisible by 5, print "Buzz"
  - otherwise, print the number

**example**

Copy Code
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

**data structures**

- range

**algorithm**

1. create a range using the input numbers
2. get a number from the range
  a. if it's divisible by 3 and 5, print "FizzBuzz"
  b. or, if it's divisible by 3, print "Fizz"
  c. or, if it's divisible by 5, print "Buzz"
  d. otherwise, print the number
3. repeat step 2 until the end of the range is reached

=end

# def fizzbuzz(start_num, end_num)
#   for num in (start_num..end_num)
#     if num % 3 == 0 && num % 5 == 0
#       print "Fizzbuz"
#     elsif num % 3 == 0
#       print "Fizz"
#     elsif num % 5 == 0
#       print "Buzz"
#     else
#       print num
#     end

#     num == end_num ? puts('') : print(", ")
#   end
# end

# def fizzbuzz(start_num, end_num)
#   result = (start_num..end_num).map do |num|
#     if num % 3 == 0 && num % 5 == 0
#       "Fizzbuz"
#     elsif num % 3 == 0
#       "Fizz"
#     elsif num % 5 == 0
#       "Buzz"
#     else
#       num
#     end
#   end

#   puts result.join(', ')
# end


p fizzbuzz(1, 15)
