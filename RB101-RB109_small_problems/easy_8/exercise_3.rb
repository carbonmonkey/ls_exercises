=begin
Leading Substrings

Write a method that returns a list of all substrings of a string
that start at the beginning of the original string. The return
value should be arranged in order from shortest to longest substring.

**problem**

- input is a string
- output is an array
  - a list of all substrings that start at the beginning of the input string
  - from shortest to longest

**examples**

leading_substrings('abc') == ['a', 'ab', 'abc']
leading_substrings('a') == ['a']
leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

**data structures**

- string --> array

**algorithm**

- create an empty array to hold the substrings
- create an empty string to hold the current substring
**loop**
  - get a character from the string
  - add it to the current substring
  - add the current substring to the array
  - repeat until the end of the input string is reached
**end loop**

- return the array
=end

# def leading_substrings(string)
#   result = []
#   current_substring = ''

#   string.each_char do |char|
#     result << (current_substring += char)
#   end

#   result
# end

# def leading_substrings(string)
#   result = []

#   string.length.times do |i|
#     result << string.slice(0..i)
#   end

#   result
# end

# def leading_substrings(str)
#   str.chars.map.with_index  { |_, idx| str[0..idx] }
# end

# def leading_substrings(str)
#   (1..str.size).map { |idx| str[0, idx] }
# end

def leading_substrings(str)
  result = []
  str.chars.inject('') do |substr, char|
    result.push(substr + char)
    substr + char # inject assigns block's return value to substr
  end
  result
end



p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
