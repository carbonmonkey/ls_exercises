=begin
problem:
- outputs a random robot name
- must be a random sequence
- cannot use the same name twice

examples/test cases:
- There is a Robot class
- a Robot object gets a name when instantiated
- The name has 2 uppercase letters followed by 3 digits
- the #name method returns the robot's name
- the #reset method resets the robots' name

data structures:
- array of numbers
- array of letters

- seed number(class var)

- string

algorithm:
- constructor method:
  - assign a random name(helper)

- #reset
  - increment the seed number
  - reseed the generator
  - create an empty string
  - sample the letters array twice and add to the string
  - sample the numbers array twice and add to the string

- #name
  - return the robot name
=end

class Robot
  LETTERS = ('A'..'Z').to_a
  NUMBERS = ('0'..'9').to_a
  @@in_use_names = []

  attr_reader :name

  def initialize
    reset
  end

  def reset
    @@in_use_names.delete(name)
    generate_name!
    @@in_use_names << name
  end

  private

  def generate_name!
    loop do
      @name = ''
      2.times { |_| name << LETTERS.sample }
      3.times { |_| name << NUMBERS.sample }
      break unless @@in_use_names.include?(name)
    end
  end
end