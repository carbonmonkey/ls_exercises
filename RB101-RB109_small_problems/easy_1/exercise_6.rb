def reverse_words(string)
  words = string.split
  words.map! do |word|
    word.length >= 5 ? word.reverse : word
  end
  words.join(' ')
end

p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS