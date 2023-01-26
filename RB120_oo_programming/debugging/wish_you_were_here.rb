class Person
  attr_reader :name
  attr_accessor :location

  def initialize(name)
    @name = name
  end

  def teleport_to(lat, long)
    @location = GeoLocation.new(lat, long)
  end
end

class GeoLocation
  attr_reader :latitude, :longitude

  def initialize(lat, long)
    @latitude = lat
    @longitude = long
  end

  def to_s
    "(#{latitude}, #{longitude})"
  end

  def ==(other)
    # to_s == other.to_s
    latitude == other.latitude &&
    longitude == other.longitude
  end
end

ada = Person.new('Ada')
ada.location = GeoLocation.new(53.4777, -2.236)

grace = Person.new('Grace')
grace.location = GeoLocation.new(-33.89, 151.277)

ada.teleport_to(-33.89, 151.277)

puts ada.location
puts grace.location
puts ada.location == grace.location




