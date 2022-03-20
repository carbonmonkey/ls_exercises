def word_sizes(words)
  sizes = Hash.new(0)
  words.split.each do |word|
    sizes[word.length] += 1
  end
  sizes
end

# def word_sizes(words)
#   sizes = {}
#   words.split.each do |word|
#     key = word.length
#     sizes.member?(key) ? sizes[key] += 1 : sizes[key] = 1
#   end
#   sizes
# end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}
