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
    - no longer count as characters in terms of switching case


**examples**

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'

**data structures**

- string --> string

**algorithm**

- create an empty string for the result
- set an uppercase variable to true
- starting with the first character in the input string
  - if the character is a letter
    - set the character as uppercase or lowercase depending
      on the value of uppercase variable
    - add the character to result string
    - swap the value of the uppercase variable
  - otherwise, add the unchanged character to the result string
- repeat the previous step until the end of the input string is reached
- return the result string


=end

def staggered_case(string, non_letter_case_change: false)
  result = ''
  uppercase = true

  string.each_char do |char|
    if ('A'..'z').cover?(char)
      result += (uppercase ? char.upcase : char.downcase)
      uppercase = !uppercase
    else
      result += char
      uppercase = !uppercase if non_letter_case_change
    end
  end

  result
end

p staggered_case('I Love Launch School!', :non_letter_case_change => true) == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
