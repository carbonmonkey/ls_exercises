## Understand the Problem
### expected input/output
**inputs:**
1. A number as a string

**outputs:**
1. A number as an integer

### requirements explicit/rules

**explicit requirements:**
- may not use standard conversion methods
- all input characters are numeric
- may include `+` or  `-` characters
- if string bigins with a `+` or a number no a return a positive integer
- if string begins with  a `-`, return negative integer
- use a method

**implicit requirements:**
- method name is `string_to_signed_ineger`

### mental model
**summary view of entire problem:**
- A method that takes a string of digits, and returns the integer version

## Examples and Test Cases
**inputs:**
```ruby
string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100
```

**expected outputs:**
`true`
`true`
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array

## Algorithm
**steps for converting input to output:**
1. set `STRINGS_N_INTS` as a hash with string keys and integer values
2. set input string as `str`
3. set `chars` as the characters of `str` split into an array
4. set `negtive` as `false`
5. if the first  element of `chars` is a `+`
	1.  remove the first element
6. if the first element of `chars` is a `-`
	1. remove the first element
	2. set `negative` as `true`
7. reverse the value of `chars`
8. set intger as `0`
9. set multiplier as `1`
10. for each element of `chars`
	1. retrieve the integer value of the character from the hash
	2. multiply the value of the integer by `multiplier` and add it to the value of `integer`
	3. set the value of `multiplier` as itself times `10`
11. if `negative` is true, set the value of integer as `-1` times itself
12. return `integer`

## Code
**code with intent:**
