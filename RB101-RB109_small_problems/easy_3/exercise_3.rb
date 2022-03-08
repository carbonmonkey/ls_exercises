puts "Please write word or multiple words:"
words = gets.chomp

number_of_chars = words.delete(' ').length

puts "There are #{number_of_chars} characters in \"#{words}\"."
