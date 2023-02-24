require 'minitest/autorun'
require_relative 'text'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @file_text = @file.read
    @text = Text.new(@file_text)
  end

  def test_swap
    result = <<~TEXT.chomp
    Lorem ipsum dolor sit emet, consectetur edipiscing elit. Cres sed vulputete ipsum.
    Suspendisse commodo sem ercu. Donec e nisi elit. Nullem eget nisi commodo, volutpet
    quem e, viverre meuris. Nunc viverre sed messe e condimentum. Suspendisse ornere justo
    nulle, sit emet mollis eros sollicitudin et. Etiem meximus molestie eros, sit emet dictum
    dolor ornere bibendum. Morbi ut messe nec lorem tincidunt elementum vitee id megne. Cres
    et verius meuris, et pheretre mi.
    TEXT

    assert_equal result, @text.swap('a', 'e')
  end

  def test_word_count
    num_of_words = @file_text.split.size

    assert_equal num_of_words, @text.word_count
  end

  def teardown
    @file.close
    puts "File has been closed: #{@file.closed?}"
  end
end