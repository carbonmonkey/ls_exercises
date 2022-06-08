=begin
Double Char (Part 1)

Write a method that takes a string, and returns a new string in which every character
is doubled.

**problem**

- input is a string
- output is a new string
  - every character is doubled
- characters include non-alphanumerics
- if input is an empty string, return an empty string

**examples**

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

**data structures**

- input string --> array of characters --> new array of characters --> string

**algorithm**

1. split the input string into an array of characters
2. create a new array for doubled characters
3. get a character from the array
4. add it twice to the new array
5. repeat steps 3 and 4 until the end of the characters array is reached
6. join the characters into a string
7. return the string
=end

# def repeater(str)
#   str.chars.map { |char| char * 2 }.join
# end

# def repeater(str)
#   result = ''
#   str.each_char { |char| result << (char * 2) }
#   result
# end

# def repeater(string)
#   string.chars.inject('') { |str, char| str + (char * 2) }
# end

def repeater(string, index = 0)
  return '' if index >= string.length
  (string[index] * 2) + repeater(string, index + 1)
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
