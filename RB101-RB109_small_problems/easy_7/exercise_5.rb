=begin
Write a method that takes a String as an argument, and returns
a new String that contains the original value using a staggered
capitalization scheme in which every other character is
capitalized, and the remaining characters are lowercase.
Characters that are not letters should not be changed, but
count as characters when switching between upper and lowercase.

**problem**

- input is a string argument
- output is a new string
  - contains original value with every other charcter capitalized
  - remaining letters are lowercase
  - characters that are not letters are unchanged
    - still count as characters in terms of switching case
  - letters in odd indexes are lowercase

**examples**

staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

**data structures**

- string --> array --> string

**algorithm**

- create an empty string for the result
- split the string into an array of characters
- starting with the first character in the array
  - get a character
  - if the inex of the character is odd add the downcase version to result string
  - if not, add the uppercase version of the character to the result string
- repeat the previous step until the end of the array is reached
- return the result string

=end

# def staggered_case(string)
#   result = ''

#   string.chars.each_with_index do |char, index|
#     result << (index.odd? ? char.downcase : char.upcase)
#   end

#   result
# end

def staggered_case(string, first_char_uppercase: true)
  string.chars.map.with_index do |char, index|
    index += 1 unless first_char_uppercase

    index.odd? ? char.downcase : char.upcase
  end.join
end


p staggered_case('I Love Launch School!', first_char_uppercase: false) # == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
