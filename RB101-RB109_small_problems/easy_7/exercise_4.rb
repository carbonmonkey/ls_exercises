=begin
Write a method that takes a string as an argument and returns a new string in which 
every uppercase letter is replaced by its lowercase version, and every lowercase letter 
by its uppercase version. All other characters should be unchanged.

You may not use String#swapcase; write your own version of this method.

**problem**

- input is a sting argument
- ouput is a new string
  - every uppercase letter replaced by lowecase
  - vice versa
  - all other characters uncahnged
- may not use swapcase method


**examples**

swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

**data structures**

- strings

**algorithm**

- create a string for the result
- starting with the first character in the input string
  - get a character
  - if it's a lowercase letter, change it to uppercase
  - if it's a uppercase letter, change it to lowercase
  - add it to the result string
- repeat the prevoius step until the end of the input string is reached
- return the result string
=end

def swapcase(string)
  result = ''
  string.each_char do |char|
    result << case char
              when ('a'..'z') then char.upcase
              when ('A'..'Z') then char.downcase
              else char
              end
  end

  result
end

# def swapcase(string)
#   string.chars.map do |char|
#     case char
#     when ('a'..'z') then char.upcase
#     when ('A'..'Z') then char.downcase
#     else char
#     end
#   end.join
# end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
