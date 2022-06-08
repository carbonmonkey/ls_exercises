def fibonacci(n)
  fibs = [1, 1]
  until fibs.size >= n
    fibs << (fibs[-2] + fibs[-1])
  end
  fibs.last
end

# def fibonacci(n)
#   value_1 = 0
#   value_2 = 1
#   n.times do
#     value_1, value_2 = value_2, value_1 + value_2
#   end
#   value_1
# end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501
