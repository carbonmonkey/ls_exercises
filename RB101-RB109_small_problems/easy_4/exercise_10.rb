DIGITS = ('0'..'9').to_a

def integer_to_string(integer)
  integer_array = integer.digits.reverse

  string = ''

  integer_array.each do |digit|
    string += DIGITS[digit]
  end

  string
end

def signed_integer_to_string(integer)
  sign = ''

  if integer.negative?
    sign = '-'
    integer *= -1

  elsif integer.positive?
    sign = '+'

  end

  sign + integer_to_string(integer)
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'
