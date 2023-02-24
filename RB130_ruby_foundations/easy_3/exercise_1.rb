require 'minitest/autorun'

class TestSuit < MiniTest::Test
  def setup
    @value = 1
    @value2 = 2
  end

  def test_value_odd
    assert(@value.odd?, 'value is not odd!')
  end

  def test_value2_odd
    assert(@value2.odd?, 'value is not odd!')
  end
end
