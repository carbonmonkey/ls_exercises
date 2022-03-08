SQMETERS_TO_SQFEET = 10.7639

# dimensions = []

# puts "Please enter the length of the room in meters:"
# dimensions << gets.chomp.to_f

# puts "Please enter the width of the room in meters:"
# dimensions << gets.chomp.to_f

# area_meters = dimensions.reduce(:*).round(2)
# area_feet = (area_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)."

SQFEET_TO_SQINCHES = 144
SQMETERS_SQCM = 10_000

def sqfeet_to_sqcm(sqfeet)
  ((sqfeet / SQMETERS_TO_SQFEET) * SQMETERS_SQCM).round(2)
end

puts "==> Enter the length of the room in feet"
length = gets.to_f

puts "==> Enter the width of the room in feet"
width = gets.to_f

square_feet = length * width
square_inches = (square_feet * SQFEET_TO_SQINCHES).round(2)
square_centemeters = sqfeet_to_sqcm(square_feet)

puts "The area of the room is #{square_feet.round(2)} square feet " + \
     "(#{square_inches} square inches, or #{square_centemeters} " + \
     "square centimeters)."
