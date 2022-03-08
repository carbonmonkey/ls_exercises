def palindrome?(data)
  data == data.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true 
p palindrome?([1, 2, 3, 2, 1]) == true
p palindrome?([1, 2, 3]) == false
p palindrome?(['cat', 'fish', 'dog', 'fish', 'cat']) == true
p palindrome?(['cat', 2, 'dog', 2, 'cat']) == true
p palindrome?(' madam') == false # (spaces at beginning or end matter)
p palindrome?('madam ') == false 
