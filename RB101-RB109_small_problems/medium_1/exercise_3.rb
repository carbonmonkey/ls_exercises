=begin
Rotation (Part 3)

If you take a number like 735291, and rotate it to the left, you get 352917. If you now keep the first
digit fixed in place, and rotate the remaining digits, you get 329175. Keep the first 2 digits fixed in
place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. The resulting
number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You
can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

**problem**

- input is an integer
- ouput is the maximum roatation of the input integer
- maximum rotation is achieved by
  - rotating the digits to the left
  - fixing the first digit
  - rotating the remaining digits
  - fixing the first 2 digits
  - repeat unitl the last 2 digits are rotated
- leading zeros are dropped
- do not have to handle multiple zero
- a 6 digit number gets rotated 5 times
  - last 6, last 5, last 4, last 3, last 2

**examples**

123456 --> 234561(rotate 6) --> 2_45613(rotate 5) --> 24_6135(rotate 4) --> 246_351(rotate 3) --> 2463_15(rotate 2)

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

**data_structures**

- integer --> string --> array --> string --> integer

**algorithm**

- set a counter to the number of digits in input integer
- set the current number to the input integer
- call the `rotate_rightmost_digits` method with the current number and counter as arguments
- save the result as the current number
- subtract 1 from the counter
- repeat the previous 3 steps until the counter == 1
- return the current number
=end

def rotate_array(arr)
  temp = arr.clone
  temp << temp.shift
end

# old
# def max_rotation(num)
#   counter = num.digits.size
#   current_num = num
#   loop do
#     break if counter <= 1
#     current_num = rotate_rightmost_digits(current_num, counter)
#     counter -= 1
#   end
#   current_num
# end

# old
# def rotate_rightmost_digits(num, n)
#   digits_arr = num.digits.reverse
#   first, last = digits_arr[0...-n], digits_arr[-n..]
#   rotated_digits = rotate_array(last)
#   (first + rotated_digits).join.to_i
# end

# new
def max_rotation(num)
  digits_arr = num.digits.reverse
  counter = digits_arr.size
  loop do
    break if counter <= 1
    digits_arr = rotate_rightmost_digits(digits_arr, counter)
    counter -= 1
  end
  digits_arr.join.to_i
end

# new
def rotate_rightmost_digits(digits_arr, n)
  first, last = digits_arr[0...-n], digits_arr[-n..]
  rotated_digits = rotate_array(last)
  first + rotated_digits
end

p max_rotation(735291) #== 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
p max_rotation(123456) == 246315
p max_rotation(10000001)
