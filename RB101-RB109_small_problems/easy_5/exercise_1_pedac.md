## Understand the Problem
### expected input/output
**inputs:**
1. a string

**outputs:**
1. the sum of the ASCII values of every character in the string

### requirements explicit/rules
**terms:**
- ASCII
	- American Standard Code for Information Interchange
	- probably the most-used 8-bit character encoding in the world
- ASCII string value
	- the sum of the ASCII values of every character in the string
- ASCII character value
	- the integer ordinal of a one-character string
	- the integer in the decimal numeral system associated with an ASCII character
- ordinal
	- a number defining a thing's position in a series

**explicit requirements:**
- returns ASCII string value of input string

**implicit requirements:**
- returns an integer value
- an empty string returns `0` (the ASCII character value of null)

### mental model
**summary view of entire problem:**
- A method that takes an input string, tallies the ASCII values of each character, and returns that value

## Examples and Test Cases
**inputs:**
```ruby
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0
```
**expected outputs:**
all `true`

## Data structure
**data structures for converting inputs to outputs:**
- array

## Algorithm
**steps for converting input to output:**
1. set input as `string`
2. split `string` into individual characters and set as `char_array`
3. set `ascii_total` as `0`
4. for each element in `char_array`
	1. determine the ASCII value
	2. add the value to `ascii_total`
5. return `ascii_total`

**recursive solution:**
1. set input as `string`
2. return `0` if `string` is empty
3. set `ascii_total` as `0``
4. recursively call method with argument `string[1..-1]` and add return value to `ascii_total`
5.  add the ASCII value of the first character of `string` to `ascii_total` and return the value

## Code
**code with intent:**
