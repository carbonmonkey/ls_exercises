NUM_WORDS = %w(
    zero one two three four five six
    seven eight nine ten eleven
    twelve thirteen fourteen fifteen
    sixteen seventeen eighteen nineteen
  )
numbers = (0..19).to_a
# def alphabetic_number_sort(numbers)
#   num_words_hash = {}
#   NUM_WORDS.each_with_index do |word, index|
#     num_words_hash[word] = index
#   end
#   num_words_hash.sort.to_h.values
# end

def alphabetic_number_sort(numbers)
  numbers.sort_by! { |number| NUM_WORDS[number] } 
end

p numbers

p alphabetic_number_sort(numbers) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

p numbers
