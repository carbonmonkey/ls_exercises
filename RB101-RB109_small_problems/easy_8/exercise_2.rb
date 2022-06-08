=begin
Madlibs

Mad libs are a simple game where you create a story template
with blanks for words. You, or another player, then construct
a list of words and place them into the story, creating an
often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a 
verb, an adverb, and an adjective and injects those into a 
story that you create.

**algorithm**

- create an array of input types
- create a hash to hold user input
- iterate through the input types:
  - get a value from the user
  - add it to the hash as a value
    - use the input type as a key
- interpolate the values from the hash into a story
=end

word_types = %w(noun verb adjective adverb)
words = {}

for type in word_types
  puts type.start_with?('a') ? %(Enter an #{type}:) : %(Enter a #{type}:)

  words[type] = gets.chomp
end

puts %(The #{words['adjective']} #{words['noun']} will #{words['verb']} you very #{words['adverb']}.)
