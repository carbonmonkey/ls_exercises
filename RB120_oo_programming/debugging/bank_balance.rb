require 'pry'
class BankAccount
  attr_reader :balance

  def initialize(account_number, client)
    @account_number = account_number
    @client = client
    @balance = 0
  end

  def deposit(amount)
    if amount > 0
      self.balance += amount
      "$#{amount} deposited. Total balance is $#{balance}."
    else
      "Invalid. Enter a positive amount."
    end
  end

  def withdraw(amount)
    if amount > 0 && amount <= balance
      success = (self.balance -= amount)
    else
      success = false
    end

    if success
      "$#{amount} withdrawn. Total balance is $#{balance}."
    else
      "Invalid. Enter positive amount less than or equal to current balance."
    end
  end

  def balance=(new_balance)
    if valid_transaction?(new_balance)
      @balance = new_balance
    end
  end

  def valid_transaction?(new_balance)
    new_balance >= 0
  end
end

account = BankAccount.new('5538898', 'Genevieve')

p account.balance
p account.deposit(50)
p account.balance
p account.withdraw(80)
p account.balance


