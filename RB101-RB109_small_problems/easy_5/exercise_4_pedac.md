## Understand the Problem
### expected input/output
**inputs:**
1. a string of words

**outputs:**
1. a string in which the first and last letters of every word are swapped

### requirements explicit/rules

**explicit requirements:**
- every word contains at least one letter
- the string will always contain at least one word
- the string contains nothing but words and spaces

**implicit requirements:**
- the case of each character is maintained
- a method is used named `swap`
- the original spacing is maintained

### mental model
**summary view of entire problem:**
- a method that takes an input string, breaks it into individual words, swaps the first and last letters of each word, and returns the result as a new string

## Examples and Test Cases
**inputs:**
```ruby
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'
```

**expected outputs:**
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array of strings

## Algorithm
**steps for converting input to output:**
1. set the input as `string`
2. split the string into an array of words and set it as `words`
3. iterate through `words`
	1. set the first letter of the element as `first_char`
	2. set the second letter of the element as `last_char`
	3. change the first letter of the element to `last_char`
	4. change the last letter of the element to `first_char`
4. join `words` together into a string separated by spaces and return the value

## Code
**code with intent:**
