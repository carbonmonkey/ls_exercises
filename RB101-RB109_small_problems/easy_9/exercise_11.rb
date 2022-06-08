=begin
Group Anagrams

Given the array...

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

Write a program that prints out groups of words that are anagrams. Anagrams are words
that have the same exact letters in them but in a different order. Your output should
look something like this:

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

**problem**

- input is an array of single words
- output is arrays of groups of words that are anagrams, printed
- anagrams are words that have the same letters in a different order
- if a word has no anagrams in the array, print the word in it's own array

**examples**

['rat', 'tar', 'art', 'pig'] 
=> ['rat', 'tar', 'art']
-> ['pig']

**data structures**

- array --> arrays

**algorithm**

- create an empty array 'result' to conain arrays of anagrams
- save the input array as 'remaining_words' array
**loop**
  - create an empty array for the current group of anagrams
  - get a string from the 'remaining_words' and set it as the current word
  - compare the current word to all other words in the 'remaining_words' --> subprocess
    - add the other words that are anagrams of the current word to current anagrams
  - remove the words that are in current anagrams from the 'remaining_words' --> subprocess
  - add current anagrams array to result array
  - repeat until the 'remaining_words' is empty
**end loop**
- print out each array from the result array

*subprocess compare current word to all other words*

**loop**
  - get a word from the 'remaining_words'
  - split it into an array of characters
  - sort the characters in the array in alphabetical order
  - repeat the previous 2 steps for the current word
  - compare the two arrays
  - if they are the same, add the word to current anagrams array
  - repeat until the end of the 'remaining_words' is reached
**end loop**

*subprocess remove words that are in current anagrams array from the 'remaining_words'*

- subtract the current anagrams array from the input array
- save the result as remaining words array

=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

def anagrams?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def group_anagrams(words)
  result = []
  remaining_words = words

  until remaining_words.empty?
    # set the current word
    current_word = remaining_words.first

    # select anagrams for the current word
    current_anagrams = remaining_words.select do |word|
      anagrams?(current_word, word)
    end

    # add current group of anagrams to result
    result << current_anagrams

    # remove current group of anagrams from remaining words
    remaining_words -= current_anagrams
  end

  result
end

def display_anagrams(words)
  group_anagrams(words).each { |group| p group }
end

display_anagrams(words)
