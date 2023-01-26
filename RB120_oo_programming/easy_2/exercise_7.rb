class Shelter
  attr_reader :adoptors, :pets
  def initialize
    @pets = []
    @adoptors = [] 
  end
  
  def add_pets(*new_pets)
    pets.concat(new_pets)
  end

  def display_unadopted_pets
    if pets.empty?
      puts "The Shelter currently has no pets to adopt."
    else
      puts "The Animal Shelter has the following unadopted pets:", pets
    end
    puts "\n"
  end

  def adopt(owner, pet)
    adoptors << owner unless adoptors.include?(owner) 
    owner.pets << pet
    pets.delete(pet)
  end

  def print_adoptions
    adoptors.each do |owner|
      puts "#{owner.name} has adopted the following pets:", owner.pets
      puts "\n"
    end
  end
end

class Pet
  attr_reader :type, :name
  @@all_pets = []

  def initialize(type, name)
    @type = type
    @name = name
    @@all_pets << self
  end

  def self.all_pets
    @@all_pets
  end
  
  def self.dispay_all_pets
    puts "These are all the current pets in existence:", all_pets
  end

  def to_s
    "a #{type} named #{name}"
  end
end

class Owner
  attr_reader :pets, :name

  def initialize(name)
    @name = name
    @pets = []
  end

  def number_of_pets
    pets.size
  end
end


butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.add_pets(*Pet.all_pets)
shelter.display_unadopted_pets

shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."

shelter.display_unadopted_pets