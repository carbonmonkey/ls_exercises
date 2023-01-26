module Walkable
  def walk
    "#{full_name} #{gait} forward"
  end
end

class Person
  attr_reader :name

  include Walkable

  def initialize(name)
    @name = name
  end

  def full_name 
    name
  end
  
  private

  def gait
    "strolls"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def full_name 
    "#{title} " + super
  end

  private

  def gait
    "struts"
  end
end

class Cat
  attr_reader :name

  include Walkable
  
  def initialize(name)
    @name = name
  end

  def full_name
    name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  private

  def gait
    "runs"
  end
end

mike = Person.new("Mike")
puts mike.walk

kitty = Cat.new("Kitty")
puts kitty.walk

flash = Cheetah.new("Flash")
puts flash.walk

byron = Noble.new("Byron", "Lord")
puts byron.walk

p byron.title, byron.name