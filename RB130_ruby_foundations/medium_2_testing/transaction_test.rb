require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def test_prompt_for_payment_sufficient
    transaction = Transaction.new(100)
    input = StringIO.new("100\n")
    capture_io do
      transaction.prompt_for_payment(input: input)
    end
    assert_equal(100, transaction.amount_paid)
  end
end