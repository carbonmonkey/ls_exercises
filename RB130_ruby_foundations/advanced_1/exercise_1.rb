

# fib = Enumerator.new do |y|
#   a = b = 1
#   loop do
#     y.yield(a)
#     a, b = b, a + b
#   end
# end

fact = Enumerator.new do |e|
  num = 0
  loop do
    num == 0 ? e.yield(1) : e.yield((1..num).reduce(:*))
    num += 1
  end
end

7.times { p fact.next }
3.times { p fact.next }
fact.rewind
7.times { p fact.next }

fact.each_with_index do |value, number|
  puts "#{number}! == #{value}"
  break if number >= 7
end
