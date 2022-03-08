def palindromic_number?(i)
  i.digits == i.digits.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true

p palindromic_number?(0123210) == true
p palindromic_number?(09) == false