items = %w(apples corn cabbage wheat)

def gather(items)
  puts %(Let's start gathering food.)
  yield(items)
  puts %(We've finished gathering!)
end

gather(items) do |*food, grain|
  puts food.join(', ')
  puts grain
end

gather(items) do |fruit, *vegies, grain|
  puts fruit
  puts vegies.join(', ')
  puts grain
end

gather(items) do |fruit, *non_fruit|
  puts fruit
  puts non_fruit.join(', ')
end

gather(items) do |item1, item2, item3, item4|
  puts items[0..-2].join(', ') + %(, and #{item4})
end