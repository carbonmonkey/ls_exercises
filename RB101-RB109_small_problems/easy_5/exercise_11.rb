def spin_me(str)
  str.split.each do |word|
    word.reverse!
    puts "word ID is #{word.object_id}"
    # => 80
    # => 100 
  end.join(" ")
end

string = "hello world"
puts "string ID is #{string.object_id}" 
# => 60

puts "If string is split and joined, the ID is #{string.split.join(' ').object_id}"
# => 120

puts "method return ID is #{spin_me(string).object_id}" # "olleh dlrow"
# => 140

# The returning string is not the same object.
# When a string is split into an array, each string in the array is a new object.
# Mutating string objects in an array does not change the string object they are split from.
# The Array#join method returns a NEW string
