# Group 1
my_proc = proc { |thing| puts "This is a #{thing}." }
puts my_proc
puts my_proc.class
my_proc.call
my_proc.call('cat')

# Group 2
my_lambda = lambda { |thing| puts "This is a #{thing}." }
my_second_lambda = -> (thing) { puts "This is a #{thing}." }
puts my_lambda
puts my_second_lambda
puts my_lambda.class
my_lambda.call('dog')
# my_lambda.call
# my_third_lambda = Lambda.new { |thing| puts "This is a #{thing}." }

# Group 3
def block_method_1(animal)
  yield
end

block_method_1('seal') { |seal| puts "This is a #{seal}."}
# block_method_1('seal')

# Group 4
def block_method_2(animal)
  yield(animal)
end

block_method_2('turtle') { |turtle| puts "This is a #{turtle}."}
block_method_2('turtle') do |turtle, seal|
  puts "This is a #{turtle} and a #{seal}."
end
block_method_2('turtle') { puts "This is a #{animal}."}

# Group 1
# The class is `Proc`
# the `puts` call shows the location where the proc was instantiated.
# A missing argument will cause a proc parameter to be initialized to `nil`

# Group 2
# A lambda is a `Proc` object.
# A different syntax can be used to create a lambda
# A lambda will throw an `ArgumentError` if an argument is missing
# There is no `Lambda` class

# Group 3
# if an implicit block is missing an argument, the block parameter will be assigned to `nil`
# `yield` may raise a `LocalJumpError` if the method is not passed a block.
# 