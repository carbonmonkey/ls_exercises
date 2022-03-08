loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  next unless answer.downcase == 'yes'
  break
end