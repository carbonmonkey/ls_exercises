## Understand the Problem
### expected input/output
**inputs:**
1. zero or a positive integer

**outputs:**
1. a string representation

### requirements explicit/rules

**explicit requirements:**
- no standard conversion methods

**implicit requirements:**
- use a method named `integer_to_str` that takes one argument

### mental model
**summary view of entire problem:**
- a method that takes an integer, compares it to a hash, and returns a string representation of it

## Examples and Test Cases
**inputs:**
```ruby
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
```

**expected outputs:**
`true`
`true`
`true`

## Data structure
**data structures for converting inputs to outputs:**
- string, array, hash

## Algorithm
**steps for converting input to output:**
1. create a hash `DIGITS_N_CHARS` with integer keys and string values
2. set input as `integer`
3. set `int_arr` as `integer` split into individual digits
4. set `str_arr` as an empty array
5. for each element in `int_arr`
	1. use the element as a key to return the sting value from `DIGITS_N_CHARS`
	2. add the value as an element in `str_arr`
6. combine the elements in `str_arr` into a string and return it.

## Code
**code with intent:**
