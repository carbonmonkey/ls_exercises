class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  def initialize(name, year, on_site_parking = true)
    super(name, year)
    @on_site_parking = on_site_parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
    @on_site_parking = false
  end
end