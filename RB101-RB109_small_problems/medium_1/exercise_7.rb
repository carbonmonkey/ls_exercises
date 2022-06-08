# =begin
# **problem**

# - input is a string
# - output is a string word numbers converted to digits
# - input and output are a single string

# **examples**

# word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# **data structures**

# string --> array --> string
# array for reference

# **algorithm**

# - create an array of numbers for referencing
# - split the input string into an array of words
# - get a word from the array
# - set a reference word with any non-letter chars removed
# - if the reference word is in the reference array, replace the reference word with the corrisponding index number as a string
# - append any non-letter characters from the word to the reference word
# - join the resulting array into a string and return the result

# **problem**

# - modify existing solution
# - replace number words with digits in a phone number format
#   - (xxx) xxx-xxxx
# - ten number words in a row
# - words may include punctuation
# - remove spaces from between digits
#   - only for digits that you place into the string

# **examples**

# word_to_digit('Please call me at 1 one two three five five five one two three four. Thanks.') 
#   == 'Please call me at 1 (123)555-1234. Thanks.'

# **data structures**

# string --> array --> string
# separate array for numbers

# **algorithm**

# - create a reference array of word numbers
# - create an empty array to contain strings
# - create an empty current string
# - iterate through each word in the input
#   - if the previous word was not a number, and the current word is, or vice versa --> subprocess
#     - add the current string to the array and create a new empty current string
#   - if the word is a number, add it's reference index to the current string
#   - if the word is not a number, add it to the current string along with a space
# - add the current string to the array
# - join the strings together and remove trailing whitespace
# - return the string

# subprocess
# - if the current string is not empty
#   - if the last word in the current string is a number 
#       or exclusive
#     the current word is a number
#       - add the current string to the array and create a new empty current string
# =end
# NUM_WORDS = %w(zero one two three four five six seven eight nine)

# def is_num_word?(wrd)
#   NUM_WORDS.any? { |num_word| wrd.match(/\b#{num_word}\b/i) }
# end

# def get_digit(wrd)
#   NUM_WORDS.each_with_index { |num_word, idx| return wrd.gsub(/\b#{num_word}\b/i, idx.to_s) if wrd.match(/\b#{num_word}\b/i) }
#   nil
# end

# def exclusive_num_word?(wrd1, wrd2)
#   is_num_word?(wrd1) ^ is_num_word?(wrd2)
# end


# def word_to_digit(str)
#   strings = []
#   current_str = ''
# # !!!binding.pry
#   str.split.each do |word|
#     unless current_str.empty?
#       last_word = current_str.split.last
#       if exclusive_num_word?(last_word, word)
#         strings << current_str
#         current_str = ''
#       end
#     end
#     current_str << (is_num_word?(word) ? get_digit(word) : ' ' + word + ' ')
    
#   end
#   strings << current_str
#   strings.join(' ').strip

# end

# # def word_to_digit(str)
# #   num_words = %w(zero one two three four five six seven eight nine)
# #   str.split.map do |word|
# #     ref_word = word.delete('^A-z')
# #     ref_word = num_words.include?(ref_word) ? num_words.index(ref_word).to_s : ref_word
# #     ref_word << word.delete('A-z')
# #   end.join(' ')
# # end

# require 'pry-byebug'

# # def word_to_digit(str)
# #   num_words = %w(zero one two three four five six seven eight nine)
# #   str.split.map do |word|
# #     num_words.each do |num_word|
# #       if word.include?(num_word)
# #         word = word.gsub(num_word, num_words.index(num_word).to_s)
# #       end
# #     end
# #     word
# #   end.join(' ')
# # end

# # def word_to_digit(str)
# #   num_words = %w(zero one two three four five six seven eight nine)

# #     num_words.each do |num_word|
# #         str.gsub!(/\b#{num_word}\b/i, num_words.index(num_word).to_s)
# #     end

# #   str
# # end
# # DIGIT_HASH = {
# #   'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
# #   'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
# # }.freeze

# # def word_to_digit(words)
# #   DIGIT_HASH.keys.each do |word|
# #     words.gsub!(/\b#{word}\b/, DIGIT_HASH[word])
# #   end
# #   words
# # end

# p word_to_digit('Please call me at five five Five ONE two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

=begin
**problem**
- remove spaces between consecutive numbers
- only if numbers you create

**examples**

"1 2 3 comes before four five and six." --> "1 2 3 comes before 45 and 6."

**data structures**
string --> array of strings --> string

**algorithm**

- clone the input string
- replace the words in input string with corrisponding numbers
- split the two strings into arrays of words
- create an empty string for digits
- create an array for the result
- compare the words at each index with each array
  - if the words are the same:
    -unless the digits string is empty:
      - if the digits string is 10 digits, interpolate it into a phone format
      - add the digit string to the result array
    - reset the digits string to an empty string
    - add the word to the result array
  - if not:
    - add the the digit to the digits string
- add the digits string to the result array
- join the result array into a string and return it
=end
require 'pry-byebug'
DIGIT_HASH = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def remove_spaces_for_digits(words, old_words)
  words_arr = words.split
  old_words_arr = old_words.split
  digits = ''
  result = []
  index = 0
  loop do
    break if index == words_arr.size
    old_wrd, wrd = old_words_arr[index], words_arr[index]
    if old_wrd == wrd
      unless digits.empty?
        digits = phone_format(digits) if digits.size >= 10
        result << digits
        digits = ''
      end
      result << wrd
    else
      digits << wrd
    end
    index += 1
  end
  result.join(' ')
end

def phone_format(digits)
  n = digits
  "(#{n[0..2]}) #{n[3..5]}-#{n[6..-1]}"
end

def word_to_digit!(words)
  old_words = words.clone
  DIGIT_HASH.keys.each do |word|
    words.gsub!(/\b#{word}\b/i, DIGIT_HASH[word])
  end
  remove_spaces_for_digits(words, old_words)
end

p word_to_digit!('Please call me at one one one five Five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
