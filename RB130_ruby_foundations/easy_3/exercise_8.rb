require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuite < MiniTest::Test
  def setup
    @value = 7
  end

  def test_if_numeric
    assert_kind_of(Numeric, @value)
  end
end