# def oddities(array)
#   odds = []
#   array.each_with_index { |v, i| odds << v if i.even? }
#   odds
# end

def oddities(array)
  odds = []
  for value in array
    next if array.index(value).odd?
    odds << value
  end
  odds
end

def evenly(array)
  iteration = 1
  evens = []
  loop do
    break if iteration >= array.size
    evens.push(array[iteration])
    iteration += 2
  end
  evens
end

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []

p evenly([2, 3, 4, 5, 6]) == [3, 5]
p evenly([1, 2, 3, 4, 5, 6]) == [2, 4, 6]
p evenly(['abc', 'def']) == ['def']
p evenly([123]) == []
p evenly([]) == []