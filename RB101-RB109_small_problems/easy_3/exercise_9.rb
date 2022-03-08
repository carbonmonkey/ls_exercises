ALPHANUMS = (0..9).to_a + ('a'..'z').to_a

def filtered_chars(str)
  str.downcase.chars.select do |char| 
    ALPHANUMS.include?(char)
  end
end

def real_palindrome?(str)
  filtered_chars(str) == filtered_chars(str).reverse
end

# def real_palindrome?(string)
#   filtered_str = ''
#   unfiltered_str = string.downcase

#   unfiltered_str.each_char do |char|
#     filtered_str << char if ALPHANUMS.include?(char)
#   end

#   filtered_str == filtered_str.reverse
# end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false
