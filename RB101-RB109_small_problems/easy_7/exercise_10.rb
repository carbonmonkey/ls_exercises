=begin
Write a method that returns the next to last word in the String
passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at
least two words.

**problem**

- input is a string
  -contains at least two words
- output is a sting
  - next to last word in input string
- words are any sequence of non-blank characters

**examples**

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

**data structures**

- string --> array --> string

**algorithm**

- split the string into an array of words
- get the second to last word in the array
- return it

=end

# def penultimate(words)
#   words.split[-2]
# end

# p penultimate('last word') == 'last'
# p penultimate('Launch School is great!') == 'is'

=begin
Further Exploration:

Write a method that returns the middle word of a phrase or
sentence. It should handle all of the edge cases you thought
of.

**problem**

- input is a string of 0 or more words
- words are any sequence of non-blank characters
- output is the middle word of the string if the number of words is odd
  - otherwise the output is nil

**examples**

'There are four words' --> nil
'word' --> 'word'
'Here you go!' --> 'you'
'' --> nil

**data structures**

- string --> array --> string

**algorithm**

- split input string into an array of words
- if the number of elements in the array is even, return nil
- divide the length of the array by 2
- round the result down, and save it as middle index
- return the word from the array at the middle index

=end

def middle_word(sentence)
  words = sentence.split
  return nil if words.length.even?

  middle_index = (words.length / 2.0).floor
  words[middle_index]
end

p middle_word('There are four words') == nil
p middle_word('word') == 'word'
p middle_word('Here you go!') == 'you'
p middle_word('') == nil
