## Understand the Problem
### expected input/output
**inputs:**
1.  a string argument

**outputs:**
1. returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character

### requirements explicit/rules

**explicit requirements:**
- You may not use `String#squeeze` or `String#squeeze!`

## Examples and Test Cases
**inputs:**
```ruby
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''
```

**expected outputs:**
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array

## Algorithm
**steps for converting input to output:**
1. set input as `string`
2. set `letter` as an empty string
3. iterate over each `char` in `string`
	1. if `letter` is empty
		1. add `char` to `letter`
	2. else if `char` is the  same as `letter`
		1.  go to next iteration
	3.  else
		1.  return `char`


or

1. set input as `string`
2. set `result` as empty string
3. for each `char` in `string`
	1. add `char` to `result` if the last letter in `result` is not the same as `char`
4.  return `result`

## Code
**code with intent:**
