=begin
Rotation (Part 2)
Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

**problem**

- inputs are two arguments
  - an integer, and the number of digits to rotate
  - digits to rotate are counted from the end of the integer
  - the digits are rotated by moving the first position to last position
- ouput is an integer with digits rotated
  - in accordance with the second argument

**examples**

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

**data structures**

- integer --> array --> integer

**algorithm**

- split the integer into an array digits
- split the array into two arrays, 'first' and 'last'
  - split at the nth element
- call the 'rotate_array' method with 'last' as an argument
- join the returned array with 'first'
- join the resulting array into a string
- convert the string into an integer and return it
=end

def rotate_array(arr)
  temp = arr.clone
  temp << temp.shift
end

def rotate_rightmost_digits(num, n)
  digits_arr = num.digits.reverse
  first, last = digits_arr[0...-n], digits_arr[-n..]
  rotated_digits = rotate_array(last)
  (first + rotated_digits).join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
