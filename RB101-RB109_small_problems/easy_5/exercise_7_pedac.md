## Understand the Problem
### expected input/output
**inputs:**
1.  a string with one or more space separated words

**outputs:**
1.  a hash that shows the number of words of different sizes

### requirements explicit/rules
**terms:**
- Words consist of any string of characters that do not include a space

**explicit requirements:**
- returns a hash
- exclude non-letters when determining word size

**implicit requirements:**
- hash uses word lengths as integers for keys
- hash uses number of words of that length as integer for value

### mental model
**summary view of entire problem:**
- 

## Examples and Test Cases
**inputs:**
```ruby
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
word_sizes('') == {}
```

**expected outputs:**
`true`

## Data structure
**data structures for converting inputs to outputs:**
- string -> array -> hash

## Algorithm
**steps for converting input to output:**
1. set input string as `string`
2. split string into array `words`
3. create a hash `sizes` with a default value of `0`
4. iterate through each `word` in `words`
	1. delete any non-letters from `word`
	2. find the number of characters in `word`
	3. add `1` to the value of the key in `sizes` that matches `word` length
6. return `sizes`

## Code
**code with intent:**
