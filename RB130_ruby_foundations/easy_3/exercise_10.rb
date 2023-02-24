require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TestSuite < MiniTest::Test
  def setup
    @array = ['xyz']
  end

  def test_xyz_not_in_array
    refute_includes(@array, 'xyz')
  end
end