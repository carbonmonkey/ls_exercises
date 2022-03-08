# (1..99).each do |number|
#   puts number if number % 2 != 0
# end

# 1.upto(99) { |number| puts number if number.odd? }

# for number in (1...100)
#   if number % 2 == 0
#     next
#   else
#     puts number
#   end
# end

# number = -1
# 50.times { puts number += 2 }


# arr = []
# arr[98] = nil
# arr.each_index do |i|
#   i += 1
#   if i.even?
#     next
#   else
#     puts i
#   end
# end

# i = 1
# while i < 100
#   puts i
#   i += 2
# end

def odds(num)
  return if num == 0
  odds(num - 1)
  puts num if !num.even?
end

odds(99)