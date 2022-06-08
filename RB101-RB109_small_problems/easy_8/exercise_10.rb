=begin
Get The Middle Character
Write a method that takes a non-empty string argument, and returns the middle
character or characters of the argument. If the argument has an odd length,
you should return exactly one character. If the argument has an even length,
you should return exactly two characters.

**problem**

- input is a non-empty string
- output is the middle character or characters
  - if input is odd length, return one character
  - if input is even length, return two characters

**examples**

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

**data structures**

- string

**algorithm**

- divide the length of the string by 2
- save the result as middle index and the remainder
- if the remainder is not zero, return the character at the middle index
- if the reamainder is not 0, a string including the character before the middle index
    and the character at the middle index


=end

def center_of(string)
  mid_index = string.length / 2
  string.size.odd? ? string[mid_index] : string[mid_index - 1, 2]
end


p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
