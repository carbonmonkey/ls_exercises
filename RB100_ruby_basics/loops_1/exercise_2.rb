# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break
#   end
#   break
# end

# puts 'This is outside all loops.'

# iteration = 0
# loop do
#   break if iteration == 2
#   iteration += 1
#   puts 'This is the outer loop.'

#   loop do 
#     break if iteration == 2
#     iteration += 1
#     puts 'This is the inner loop.'
#   end
# end

# puts 'This is outside all loops.'

iteration = 0
until iteration == 3
  iteration += 1
  puts 'This is the outer loop.'

  while iteration == 1
    iteration += 1
    puts 'This is the inner loop.'
  end

  iteration += 1
end

puts 'This is outside all loops.'