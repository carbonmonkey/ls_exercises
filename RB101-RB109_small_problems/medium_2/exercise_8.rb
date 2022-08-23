=begin
problem:
input is a number
output is the next featured number
- a featured number is odd, a multiple of 7, and has unique digits
- return an error message if there's no next featured number

ex:
21 --> 35 --> 35 is evenly divisible by 7, odd, and has unique digits

ds:
int     conditional                featured num

algo:
- iterate from the input number to 9_999_999_999
  - check if the current number is featured
    - if it is, return it
- output an error message
=end

def featured?(num)
  num.odd? && num.to_s.chars == num.to_s.chars.uniq
end

# def featured(num)
#   (num + 1...9_876_543_210).each do |current_num|
#     return current_num if featured?(current_num)
#   end
#   puts "There is no possible number that fulfills those requirements."
# end

def featured(num)
  num += 1

  if num > 9_876_543_201
    puts "There is no possible number that fulfills those requirements."
  else
    num += 1 until num % 7 == 0
    
    num += 7 until featured?(num)
    
    num
  end
end

p featured(9876543210)
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements