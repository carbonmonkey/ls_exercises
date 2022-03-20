## Understand the Problem
### expected input/output
**inputs:**
1.  an Array of Integers between 0 and 19

**outputs:**
1. an Array of those Integers sorted based on the English words for each number

### requirements explicit/rules

**explicit requirements:**
- array is returned sorted based on English words

**implicit requirements:**
- words are sorted alphabetically

### mental model
**summary view of entire problem:**


## Examples and Test Cases
**inputs:**
```ruby
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
```

**expected outputs:**
`true`

## Data structure
**data structures for converting inputs to outputs:**
- array, hash

## Algorithm
**steps for converting input to output:**
1. create an array `num_words` of the words `'zero'` through `'nineteen'`
2. set an empty hash as `num_words_hash`
3. iterate over each`word` in `num_words`
	1. set `word` as a key and the index number as the value in `num_words_hash`
4. sort `num_words_hash` by key
5. return the values of `num_words_hash` as an array

## Code
**code with intent:**
