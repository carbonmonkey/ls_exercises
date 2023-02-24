require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuite < MiniTest::Test
  def test_for_nil
    value = nil
    assert_nil(value)
  end
end