=begin
problem:
- input is a string that may or may not contain parentheses.
- output is a boolean determined by whether the parentheses in the input are balanced

- balanced parentheses occur in opening and closing pairs
- pairs must start with a '('
- balanced strings will have an equal number of '(' and ')'
- from left to right, the number of ')' must not exceed the number of '(' preceeding them

ex:
'((What) (is this))?' --> true
'((What)) (is this))?' --> false --> more ')' than '('

ds:
str          conditional      counter                  boole

algo:
- set a counter to 0
- iterate through each char in the input string
  - if the char is a '(' add 1 to the counter
  - if the char is a ')' subtract 1 from the counter
  - add the current value of the counter to an array
- if the last value in the array is 0, and there or no values less than 0:
  - return true
- otherwise, return false
=end

def balanced_brackets?(text, brackets = '()')
  l_bracket, r_bracket = brackets[0], brackets[1]
  counter = 0
  bracket_counts = text.chars.map do |char|
    counter += 1 if char == l_bracket
    counter -= 1 if char == r_bracket
    counter
  end
  bracket_counts.last == 0 && bracket_counts.none?(&:negative?)
end

def balanced?(text)
  balanced_brackets?(text) &&
    balanced_brackets?(text, '[]') &&
    balanced_brackets?(text, '{}') &&
    text.count("'").even? && text.count('"').even?
end

p balanced?('[]{}()""') == true
p balanced?("''") == true
p balanced?('"""') == false
p balanced?('[[}{()]]') == false
p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false
