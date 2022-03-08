array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
var = array1[2]
array1.each { |value| array2.push(value) }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2, var 2

# The output is:
# Moe
# Larry
# CURLY
# SHEMP
# Harpo
# CHICO
# Groucho
# Zeppo
# Both array1 and array2 contain references to all of the same String
# objects. Line 4 mutates the String objects that start with 'C' or 'S'.
# Because the both of the arrays point to all of the same objects, 
# the mutated objects are reflected accordingly. 

# Be carful of aliases. They can be elements in collections.