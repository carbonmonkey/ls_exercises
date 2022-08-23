=begin
problem:
input is a string
output is a string with words converted to numbers

ex:
'hi there one two three fellah' --> 'hi there 1 2 3 fellah'

ds
string         reference hash              string with digits

algo:
- create a hash with words as keys and numbers as values
- split the string into an array of words
- iterate through and transform the array
  - create a stripped word by removing any non-letter chars
  - if the stripped word is a key in the reference hash:
    - place the value for the key into a new array
  - otherwise:
    - place the current word into the new array
- join the new array into a string with spaces, and return it

- split the sentences into arrays of words
- create an empty array to contain indexes of different words
- iterate through an array of words with indexes
  - if the words are not the same in each array, record the index in the index array

- create an empty array for the result
- create an empty temp array
- iterate through the array of indexes
  - create ranges from consecutive indexes and save them in a new array
    - if the temp array is empty:
      - push the current number into it
    - if the current number is consecutive to the last number in the temp array:
      - push the current number into the temp array
    - otherwise:
      - push the temp array into the result array
      - reset the temp array to only have the current number
- add the temp array to the result array if its size is greater than 1

- use those ranges to join the digits in the new sentence array together
  - split the new sentence into an array of words
  - iterate through the array of ranges
    - mutate the array of words:
      - replace the words in the current range with a joined string without spaces
=end
def crush_numbers(sentence, ranges)
  words = sentence.split
  ranges.each do |range|
      digits = words[range]
      digits = digits.join
      if digits.size >= 10
        first, mid, last = digits[0..2], digits[3..5], digits[6..]
        digits = "(#{first}) #{mid}-#{last}"
      elsif digits.size >= 7
        first, last = digits[0..2], digits[3..]
        digits = "#{first}-#{last}"
      end
      words[range] = digits
  end
  words.join(' ')
end

def ranges(arr)
  result = []
  temp = []
  arr.each do |index|
    if temp.empty? || temp.last.next == index
      temp << index
    else
      result << temp if temp.size > 1
      temp = [index]
    end
  end
  result << temp if temp.size > 1
  result.map do |subarr|
    (subarr.first..subarr.last)
  end
end

def indexes_of_digits(sentence1, sentence2)
  indexes = []
  arr1 = sentence1.split
  sentence2.split.each_with_index do |word, index|
    indexes << index if word != arr1[index]
  end
  indexes
end

def word_to_digit(sentence)
  words_n_digits = {}
  num_words = %w(zero one two three four five six seven eight nine)
  num_words.each_with_index { |key, value| words_n_digits[key] = value.to_s }

  new_sentence = sentence 
  words_n_digits.each do |word, digit|
    new_sentence = new_sentence.gsub(/\b#{word}\b/i, digit)
  end

  range_arr = ranges(indexes_of_digits(new_sentence, sentence))

  crush_numbers(new_sentence, range_arr)
end

p word_to_digit("This here's a test. 1 time I oneder  one if you call me at four seven nine seven nine three two six five four. Thanks!")
p word_to_digit('Please call me at five five five one two three FOUR. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'