=begin
Problem:
- input is an integer
- ouput is a roman numeral string that represents the input number
rules:
- only needs to calculate to about 3000
- each digit is represented separately starting with the left most and skipping 0
- a numeral placement can represent subtraction(when a smaller numeral is placed before a larger numeral)

I -> 1
V -> 5
X -> 10
L -> 50
C -> 100
D -> 500
M -> 1000

- if the number is a multiple of 1000, start with M's
- a 1, 5 or 10 is represented my a single numeral
- a 2 is represented by 2 numerals -> II, XX, CC or MM
- a 3 is represented by 3 numerals -> III, XXX, CCC or MMM
- a 4 is 2 numerals using subtraction -> IV, XL, or CD (subtract 1 numeral down)
- a 6 is 2 numerals                   -> VI, LX, or DC (add 1 numeral down)
- a 7 is 3 numerals                   -> VII, LXX, DCC      ||
- an 8 is 4 numerals                  -> VIII, LXXX, DCCC   ||
- a 9 is 2 numerals using subtraction -> IX, XC, CM    (subtract 2 numerals down)

examples:

48
4 -> XL (- one numeral down)
8 -> VIII (+ one numeral down)

divide by 10 --> 4 remainder 8

Test cases show that:
- there are no exceptions to test for during instantiation
- the class RomanNumeral::new takes an integer as an argument
- the RomanNumeral#to_roman method returns a roman numeral as a string

data stuctures
integer

array of numerals

numeral string

algorthim
create an array of numerals from I to M
set the index to -2
- iterate through the digits in the number in reverse
    - if it's 1 - 3, mulitiply the number times the numeral at the current index
    - if 4, get the numeral at the current index, then numeral at index + 1
    - if 5 - 8, get the numeral at index + 1, then add the numeral at current index times (number - 5)
    - if 9, add the numerals at current index, then index + 2
    - add the resulting string to a new array

    - increment the index by 2

- reverse and join the array
=end

class RomanNumeral
  NUMERALS = %w(I V X L C D M)

  def initialize(num)
    @integer = num
  end

  def to_roman
    idx = -2
    @integer.digits.map do |digit|
      idx += 2
      digit_to_roman(digit, idx)
    end.reverse.join
  end

  def digit_to_roman(digit, idx)
    case digit
    when 1..3 then NUMERALS[idx] * digit
    when 4    then NUMERALS[idx] + NUMERALS[idx + 1]
    when 5..8 then NUMERALS[idx + 1] + NUMERALS[idx] * (digit - 5)
    when 9    then NUMERALS[idx] + NUMERALS[idx + 2]
    else           ''
    end
  end
end
