# say_hello = true
# iteration = 0
# while say_hello
#   puts 'Hello!'
#   iteration += 1
#   say_hello = false if iteration == 5
# end

# def my_times(count, &block)
#   iteration = 0
#   while iteration < count
#     block.call(iteration)
#     iteration += 1
#   end
# end

# say_hello = true

# while say_hello
#   my_times(5) do
#     puts 'Hello!'
#   end
#   say_hello = false
# end

def my_times(count)
  iteration = 0
  while iteration < count
    yield(iteration)
    iteration += 1
  end
end

say_hello = true

while say_hello
  my_times(5) do |x|
    puts "Hello! #{x + 1} times"
  end
  say_hello = false
end

