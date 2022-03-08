# count = 10

# until count == 0
#   puts 11 - count 
#   count -= 1
# end

arr = []

for count in 1.upto(10)
  arr.push(count)
end

puts ''
puts count
puts ''

for count in arr
  puts count
end


