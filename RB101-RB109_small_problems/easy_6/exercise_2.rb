# Write a method that takes an array of strings, and returns an 
# array of the same string values, except with the vowels 
# (a, e, i, o, u) removed.

=begin

**Problem**
requirements:
- input is an array of strings
- output is an array of same string values, with vowels removed
- vowels can be uppercase or lower case
- a string that is all vowels becomes an empty string

**Examples**
%w(a b C d E) --> %w(b C d)

remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']


**Data Structures**
arrays

**Algorithm**
- create an empty array for result
- create a string of vowels
- get the first string from the input array
- remove any vowels
  - use the string of vowels
- add it to the result array
- repeat 3 prevoius steps until the end of the input array is reached
- return the result array
=end

# def remove_vowels(array)
#   result = []
#   vowels = "AEIOUaeiou"

#   array.each do |string|
#     result << string.delete(vowels)
#   end

#   result
# end

def remove_vowels(array)
  vowels = "AEIOUaeiou"

  array.map do |string|
    string.delete(vowels)
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
