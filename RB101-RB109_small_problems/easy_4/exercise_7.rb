STRINGS_N_INTS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15
}

# def string_to_integer(str)
#   ('1'..str).to_a.length
# end

def string_to_integer(str)
  strings_n_ints = {
    '0' => 0,
    '1' => 1,
    '2' => 2,
    '3' => 3,
    '4' => 4,
    '5' => 5,
    '6' => 6,
    '7' => 7,
    '8' => 8,
    '9' => 9
  }

  multiplier = 1
  integer = 0

  str.chars.reverse.each do |char|
    integer += (strings_n_ints[char] * multiplier)
    multiplier *= 10
  end
  
integer
end

def hexadecimal_to_integer(str)
  multiplier = 1
  integer = 0

  str.downcase.chars.reverse.each do |char|
    integer += (STRINGS_N_INTS[char] * multiplier)
    multiplier *= 16
  end
  
integer
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

p hexadecimal_to_integer('4D9f') == 19871
