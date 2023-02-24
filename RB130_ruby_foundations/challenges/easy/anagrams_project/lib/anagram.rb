=begin
problem:
- input is a word and a list of possible anagrams
- output is a sublist of the words that are anagrams
rules:
- an anagram contains exactly the same letters as another word

examples/test cases:
- An Anagram object is instantiated with a string argument which is saved
- Anagram#match takes an array of strings and returns an array of strings that are anagrams from the argument array
- order does not matter in the return array
- matches are case insensitive
- identical words are not anagrams
- instantiating a Anagram object does not show any exceptions being raised

data structures:
string
array

iterator

array

algorithm:

- Anagram class instatiates an object with a string value

- Anagram#match takes an array of potential anagrams and returns an array of anagrams
  - iterate through the input array
    - if they are not the same word:
    - downcase and sort the letters of the current word
    - downcase and sort the letters of the Anagrams object's word
    - compare the resulting words
      - if they are equal, add the current word to an array of anagrams

- return the array of anagrams
=end

class Anagram
  def initialize(word)
    @word = word
  end

  def match(words)
    words.select do |word|
      sort_chars(word) == sort_chars && !word.casecmp?(@word)
    end
  end

  private

  def sort_chars(word=nil)
    word = word ? word : @word
    word.downcase.chars.sort
  end
end