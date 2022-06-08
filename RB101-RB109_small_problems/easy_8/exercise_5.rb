=begin
Palindromic Substrings

Write a method that returns a list of all substrings of a string that are palindromic.
That is, each substring must consist of the same sequence of characters forwards as it
does backwards. The return value should be arranged in the same sequence as the
substrings appear in the string. Duplicate palindromes should be included multiple times.

You may (and should) use the substrings method you wrote in the previous exercise.

For the purposes of this exercise, you should consider all characters and pay attention
to case; that is, "AbcbA" is a palindrome, but neither "Abcba" nor "Abc-bA" are. In
addition, assume that single characters are not palindromes.

Further Exploration

Can you modify this method (and/or its predecessors) to ignore non-alphanumeric
characters and case? Alphanumeric characters are alphabetic characters(upper and
lowercase) and digits.

**problem**

- create a list from a string of all substrings that are palindromes
- palindrome consists of the same sequence of characters forwards and backwards
- the list is in the sequence of substrings appearance in string
- duplicate palindromes are included in the list
- use 'substrings' method from last exercise
- consider all characters
- case matters
- single characters are not palindromes
- spaces matter
- input: a string
- ouput: a array of substring palindromes 

**examples**

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

**data structures**

- string --> array of strings

**algorithm**

1. pass the string to 'substrings'
2. create an empty array to contain palindromes
3. add only the substrings that are palindromes from the return array to result array
  a. get a substring from the return array
  b. remove non alphanumeric characters and make all lowercase 
  c. check to see if the substring is the same as the reversed substring
  d. if it's the same and more than 1 character, add it to the result array
  e. repeat steps a., b., and c., until the end of the array is reached
4. return the result array
=end

def leading_substrings(str)
  (1..str.size).map { |idx| str[0, idx] }
end

def substrings(str)
  str = str.gsub(/[^A-z0-9]/, '').downcase
  (0...str.size).inject([]) do |arr, idx|
    current_substring = str[idx..-1] 
    arr + leading_substrings(current_substring) 
  end
end

def palindrome?(substr)
  (substr.size > 1) && (substr == substr.reverse)
end

def palindromes(str)
  substrings(str).select do |substr|
    palindrome?(substr)
  end
end



p palindromes('abcd') # == []
p palindromes('madam') # == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') # == [
  # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  # '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') # == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]
