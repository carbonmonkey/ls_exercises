def sum(number)
  number.to_s.chars.inject { |digit_1, digit_2| digit_1.to_i + digit_2.to_i }
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45