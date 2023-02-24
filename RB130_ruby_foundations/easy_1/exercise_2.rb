def compute(thing)
  if block_given?
    yield(thing)
  else
    'Does not compute'
  end
end

# p compute { 5 + 3 } == 8
# p compute { 'a' + 'b' } == 'ab'
# p compute == 'Does not compute'
p compute(7) { |num| "Lucky number #{num}" }
p compute(['a', 'b']) { |arr| arr << 'c' }
p compute('zebra', &:upcase)
p compute(:thing)