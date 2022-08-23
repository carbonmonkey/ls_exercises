=begin
input is a string
output is a hash
- contains 3 entries
  - percentages of chars that are uppercase, lowercase, and neither

- input string will always contain at least one char

ex:
'abCdef 123' --> 10 chars, 5 lowercase, 1 uppercase, 4 neither
math -->  5 / 10 = x / 100
divide 100 by string.size
multiply each category of char by the result to get the %

100 / 10 = 10
10 * 5 = 50
10 * 1 = 10
10 * 4 = 40

ds:
str      multiplier                hsh

algo:
- create an empty hash for the result
- count the char types in the input string
- divide 100 by the length of the input string to get the multiplier
- multiply the char count of each char type by the multiplier, and round to 1 decimal place to get the 
  percentages
- add to the result hash
  - each char type as a symbol key
  - the percentage for the char type as each value

=end

def letter_percentages(text)
  multiplier = 100 / text.size.to_f
  {
    lowercase: (text.count('a-z') * multiplier).round(1),
    uppercase: (text.count('A-Z') * multiplier).round(1),
    neither: (text.count('^A-Za-z') * multiplier).round(1)
  }
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }
p letter_percentages('abcdefGHI')