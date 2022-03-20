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
- no `+` or  `-` characters
- use a method

**implicit requirements:**
- method name is `string_to_ineger`

### mental model
**summary view of entire problem:**
- A method that takes a string of digits, and returns the integer version

## Examples and Test Cases
**inputs:**
```ruby
string_to_integer('4321') == 4321
string_to_integer('570') == 570
```

**expected outputs:**
`true`
`true`

## Data structure
**data structures for converting inputs to outputs:**
- range
- array

## Algorithm
**steps for converting input to output:**
1. set input string as `str`
2. set `arr` as an array with the string values of `"1"` up to `str`
3. return the number of elements in `arr`


**Hexidecimal:**
- As we move left, every number place is 16 times bigger
- 

## Code
**code with intent:**
