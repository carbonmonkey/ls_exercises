=begin
Uppercase Check

Write a method that takes a string argument, and returns true if all of the alphabetic
characters inside the string are uppercase, false otherwise. Characters that are not
alphabetic should be ignored.

**problem**

- input is a string
- output is true if all letters in string are uppercase, false otherwise
- non-alphabetic characters are ignored

**examples**

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

**data structures**

- string

**algorithm**

- compare the input string to the uppercase version of itself
=end

def uppercase?(string)
  string == string.upcase
end


p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
