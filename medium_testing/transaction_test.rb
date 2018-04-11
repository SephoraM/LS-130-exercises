require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

require_relative 'transaction'

class TransactionTest < MiniTest::Test
  def test_prompt_for_payment
    transaction = Transaction.new(20)
    input = StringIO.new("20\n")
    assert_output("You owe $20.\nHow much are you paying?\n") { transaction.prompt_for_payment(input: input) }
    assert_equal(20, transaction.amount_paid)
  end
end
