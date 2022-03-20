STRINGS_N_INTS = {
  '-' => 0, '+' => 0, '0' => 0, '1' => 1, '2' => 2, '3' => 3,
  '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

# def string_to_signed_integer(str)
#   integer = 0
#   multiplier = 1

#   for char in str.chars.reverse
#     integer += (STRINGS_N_INTS[char] * multiplier)
#     multiplier *= 10
#   end

#   str.start_with?('-') ? -integer : integer
# end

def string_to_integer(str)
  ('1'..str).to_a.length
end

def string_to_signed_integer(string)
  unsigned_str = string.start_with?('-', '+') ? string[1..-1] : string 
  integer = string_to_integer(unsigned_str)
  
  case string[0]
  when '-' then -integer
  else          integer
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
