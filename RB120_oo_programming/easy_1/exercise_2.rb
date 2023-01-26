class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    # @name.upcase!
    "My name is #{@name.upcase}."
  end
end

# name = 'Fluffy'
# fluffy = Pet.new(name) # at this point, @name references "fluffy"
# puts fluffy.name # the getter method `name` returns the string "fluffy" that is referenced by `@name`
# puts fluffy      # `Pet#to_s` is called on the Pet object referenced by local variable `fluffy`
# puts fluffy.name      # the string that `@name` references has now been mutated, so the string "FLUFFY" is output 
# puts fluffy      
# puts name

name = 42
fluffy = Pet.new(name)
name += 1
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# When the pet object is instantiated and assigned to the local variable `fluffy`, the instance
# variable `@name` is assigned to the string `'42'`

# The expression `name += 1` then reassigns the local variable `name` in the main scope to 
# to integer `43`.

# `puts fluffy.name` outputs the value of `@name`, the string `'42'`

# `puts fluffy` invokes the `Pet#to_s` method on the pet object referenced by the local variable
# `fluffy`, which outputs `My name is 42.`

# `puts name` invokes `puts` on the local variable `name`, which outputs `43` the integer it was
# reassigned to on earlier.