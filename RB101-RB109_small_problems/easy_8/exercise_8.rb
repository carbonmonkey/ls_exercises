=begin
Double Char (Part 2)
Write a method that takes a string, and returns a new string in which every consonant
character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and whitespace should
not be doubled.

**problem**

- input is a string
- output is a new string
  - every constant character is doubled
- if input is an empty string, return an empty string


**examples**

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

**data structures**

- input string --> array of characters --> new array of characters --> string
- string of constants

**algorithm**

1. create a string of constants for comparison
2. split the input string into an array of characters
3. create a new array for result
4. get a character from the array
  a. add it twice to the new array if it's a constant
  b. otherwise, add it to the array once
5. repeat steps 3 and 4 until the end of the characters array is reached
6. join the characters into a string
7. return the string

=end

def double_consonants(string)
  constants = ('a'..'z').to_a.join.delete('aeiou')

  string.chars.map do |char|
    constants.include?(char.downcase) ? char * 2 : char
  end.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
