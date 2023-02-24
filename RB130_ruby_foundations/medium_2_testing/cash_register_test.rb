require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def test_accept_money
    register = CashRegister.new(0)
    transaction = Transaction.new(100)
    transaction.amount_paid = 100

    previous_amount = register.total_money
    register.accept_money(transaction)
    current_amount = register.total_money
    assert_equal(previous_amount + transaction.amount_paid, register.total_money)
  end

  def test_cash_register_change
    register = CashRegister.new(0)
    transaction = Transaction.new(100)
    transaction.amount_paid = 140
    assert_equal 40, register.change(transaction)
  end

  def test_give_receipt
    register = CashRegister.new(0)
    transaction = Transaction.new(100)
    assert_output("You've paid $100.\n") { register.give_receipt(transaction) }
  end
end
