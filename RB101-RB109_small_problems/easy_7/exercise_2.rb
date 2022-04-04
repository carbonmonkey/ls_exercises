=begin

Write a method that takes a string, and then returns a hash that 
contains 3 entries: one represents the number of characters in the 
string that are lowercase letters, one the number of characters that 
are uppercase letters, and one the number of characters that are 
neither.

**problem**

- input is a string
- output is a hash
  - has 3 entries
    - the number of lowercase letters
    - the number of uppercase letters
    - the number of character that are neither
- spaces are counted as neither

**examples**

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

**data structures**

- input string
- output hash

**algorithm**

- create an empty has for the result
- count the number of characters that are lowercase and add the value to the hash
- do the same for uppercase characters
- do the same for all remaining characters

=end

def letter_case_count(string)
  {
    lowercase: string.count('a-z'),
    uppercase: string.count('A-Z'),
    neither: string.count('^A-z')
  }
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
