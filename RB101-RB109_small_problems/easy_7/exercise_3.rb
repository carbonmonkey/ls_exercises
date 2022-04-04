=begin

Write a method that takes a single String argument and returns a new string that 
contains the original value of the argument with the first character of every word 
capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

**problem**

- input is a single string
- output is a new string
  - contains the original value of input string
  - has the first character of every word capitalized
  - all other letters lowercase
- words are any sequence of non-blank characters
- quoted words do not get capitalized

**examples**

word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

**data structures**

- string --> array --> string

**algorithm**

- split the input string into an array of words
- get a word from the array
- capitalize the first character if it is a letter
  - assign the word to the lowercase version of itself
  - select the first character of the word
  - assign it to the uppercase version of itself
- repeat last two steps until the end of the array is reached
- join the array into a string
- return the string

OR

- create an empty string for the result
- select the first character in the input string
  - capitalize it and add it to the result string
- select the next character from the input string
  - if it's preceeded by a space, add the uppercase version of it to the result string
  - if it's not, add the lowercase version of it to the result string
- return the result string

=end

def word_cap(words)
  result = ''
  result << words[0].upcase
  words[1..-1].each_char do |char|
    result << (result[-1] == ' ' ? char.upcase : char.downcase)
  end

  result
end

# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end

# def word_cap(sentence)
#   sentence.split.map do |word|
#     word = word.downcase
#     word[0] = word[0].upcase

#     word
#   end.join(' ')
# end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
