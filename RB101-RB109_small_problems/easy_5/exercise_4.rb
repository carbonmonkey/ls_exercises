def swap(string)
  string.split.each {|wrd| wrd[0], wrd[-1] = wrd[-1], wrd[0]}.join(' ')
end

# def swap_first_last_characters(a, b)
#   a, b = b, a
# end

# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word[0], word[-1])
#   end
#   result.join(' ')
# end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

# Further Exploration:
# The values returned from the 'swap_first_last_characters' method are
# individual characters, which are passed back to the map method. The map
# method ultimately returns an array of individual characters, which are
# joined together into a string and returned by the swap method.
