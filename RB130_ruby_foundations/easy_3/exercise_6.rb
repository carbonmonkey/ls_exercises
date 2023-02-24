require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class NoExperienceError < StandardError; end

class Employee
  def initialize
    @experience = nil
  end
  
  def hire
    raise(NoExperienceError) unless @experience
    @hired = true
  end
end

class TestSuite < MiniTest::Test
  def setup
    @employee = Employee.new 
  end

  def test_hire_raises_error
    assert_raises(NoExperienceError) { @employee.hire }
  end
end