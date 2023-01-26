text = File.read("story.txt")
words = {
  noun:      %w(cat dog pig hat whistle pony pan book field recipe),
  adjective: %w(crazy plump red hot silly creative smelly yellow angry),
  verb:      %w(ran bounced read punched sneezed joked smelled),
  adverb:    %w(quickly completely sadly peacefully angrily roughly)
}
puts text % words