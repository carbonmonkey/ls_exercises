## Understand the Problem
### expected input/output
**inputs:**
1. A string of lowercase words and non-alphanumeric characters

**outputs:**
1. a string with non-letters replaced with spaces

### requirements explicit/rules

**explicit requirements:**
- returned string should not have more than one space in a row

**implicit requirements:**
- spaces are non-alphabetic characters

### mental model
**summary view of entire problem:**
- a method that takes a string, replaces the non-alphabetic characters with spaces, removes extra spaces, and returns the value

## Examples and Test Cases
**inputs:**
```ruby 
cleanup("---what's my +*& line?") == ' what s my line '
```

**expected outputs:**
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array

## Algorithm
**steps for converting input to output:**
1. set input string as `string`
2. split `string` into array `chars`
3. set `space` as an empty string
4. set `result` as empty string
5. iterate through each `char` in `chars`
	1. if `char` is a letter
		1. add `space` and `char` to `result`
		2. set `space` as an empty string
	2. otherwise
		1. set `space` as `' '` if `space` is empty
6. return `result` + `space`

## Code
**code with intent:
