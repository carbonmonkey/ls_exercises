require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuite < MiniTest::Test
  def setup
    @value = Numeric.new
  end

  def test_if_numeric
    assert_instance_of(Numeric, @value)
  end
end