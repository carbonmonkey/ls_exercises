iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations += 1
  next if iterations <= 5
  break
end