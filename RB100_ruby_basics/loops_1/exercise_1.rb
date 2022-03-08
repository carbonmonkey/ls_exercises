# loop do
#   puts 'Just keep printing...'
#   break
# end

# count = 0
# loop do
#   count += 10
#   puts 'Just keep printing...'
#   break if count == 10
# end

stop = nil
loop do
  break if stop
  stop = true
  puts 'Just keep printing...'
end