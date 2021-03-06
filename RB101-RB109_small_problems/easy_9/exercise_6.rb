=begin
How long are you?

Write a method that takes a string as an argument, and returns an Array that contains
every word from the string, to which you have appended a space and the word length.

You may assume that words in the string are separated by exactly one space, and that
any substring of non-space characters is a word.

**problem**

- input is a string
  - words separated by a single space
  - any substring of non-space characters is a word
- output is an array
  - contains every word from the input string
    - with a space and the word length appended
- an empty input string returns an empty array

**examples**

word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

**data structures**

string --> array

**algorithm**

- create an array for the result
- split the input string into an array of words

- loop
  - get a word from the array
  - count the characters in the word
  - add the word to the result array with a space and word length appended
  - repeat until the end of the array is reached
- end loop

-return the result array
=end

# def word_lengths(sentence)
#   sentence.split.map do |word|
#     word + " #{word.length}"
#   end
# end

def word_lengths(sentence)
  sentence.split.inject([]) do |arr, word|
    arr + ["#{word} #{word.length}"]
  end
end


p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]
