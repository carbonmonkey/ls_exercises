require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

class TestSuite < MiniTest::Test
  def test_if_empty
    list = [1]
    assert_empty(list)
  end
end