# DIGITS_N_CHARS = {
#   0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 
#   5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
# }

# create a reference hash
# DIGITS_N_CHARS = {}

# key = 0
# ('0'..'9').each do |value|
#   DIGITS_N_CHARS[key] = value
#   key += 1
# end

DIGITS = ('0'..'9').to_a

def integer_to_string(integer)
  integer_array = integer.digits.reverse
  string = ''

  integer_array.each do |digit|
    string += DIGITS[digit]
  end

  string
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
