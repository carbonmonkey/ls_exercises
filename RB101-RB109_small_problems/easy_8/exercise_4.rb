=begin
All Substrings

Write a method that returns a list of all substrings of a string.
The returned list should be ordered by where in the string the
substring begins. This means that all substrings that start at
position 0 should come first, then all substrings that start at
position 1, and so on. Since multiple substrings will occur at each
position, the substrings at a given position should be returned in
order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in
the previous exercise:

**problem**

- input is sting
- output is an array of all substrings of the input string
  - ordered by where in the input string subtring begins
  - substrings starting at position 0, then position 1 ...
  - substrings ordered from shortest to longest per each starting position
- use `leading_substrings` method previously written

**examples**

substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

**data structures**

- string --> array --> array

**algorithm**

- create an empty array to hold the substrings
- set a counter to 0 for starting index of each set of substrings
**loop**
  - pass a substring starting at the index of the counter to `leading_substrings`
  - add the substrings returned by the method to the result array
  - increment the counter by 1
  - repeat until the counter reaches the length of the input string
**end loop**
return the result array

=end

def leading_substrings(str)
  (1..str.size).map { |idx| str[0, idx] }
end

# def substrings(str)
#   (0...str.size).map { |idx| leading_substrings(str[idx..-1]) }.flatten
# end

# def substrings(str)
#   result = []
#   counter = 0

#   loop do
#     break if counter >= str.size
#     result += leading_substrings(str[counter..-1])
#     counter += 1
#   end
#   result
# end

def substrings(str)
  (0...str.size).inject([]) do |arr, idx| 
    arr + leading_substrings(str[idx..-1]) 
  end
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
