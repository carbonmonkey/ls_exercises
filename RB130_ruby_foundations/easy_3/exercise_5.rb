require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuite < MiniTest::Test
  def setup
    @list = ['abc']
  end

  def test_include
    assert_includes(@list, 'xyz')
  end
end