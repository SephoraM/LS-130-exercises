require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < MiniTest::Test
  def setup
    @register = CashRegister.new(100)
    @transaction = Transaction.new(20)
  end

  def test_accept_money
    @transaction.amount_paid = 20
    current_amount = @register.accept_money(@transaction)
    assert_equal(120, current_amount)
    assert_equal(current_amount, @register.total_money)
  end

  def test_change
    @transaction.amount_paid = 25
    change = @register.change(@transaction)
    assert_equal(5, change)
  end

  def test_give_receipt
    assert_output("You've paid $20.\n") { @register.give_receipt(@transaction) }
  end
end
