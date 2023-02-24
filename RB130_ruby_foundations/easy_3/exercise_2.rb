require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuit < MiniTest::Test
  def test_downcase
    value = 'XyZ'
    assert_equal('xyz', value.downcase)
  end
end