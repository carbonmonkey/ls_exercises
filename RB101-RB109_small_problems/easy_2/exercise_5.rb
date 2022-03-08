# puts "What is your name?"
# name = gets.chomp

# if name.end_with?('!')
#   name.upcase!.chop!
#   puts "HELLO #{name}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end

puts "What is your name?"
name = gets.chomp

if name[-1] == '!'
  name.upcase!.chomp!('!')
  puts "HELLO #{name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end