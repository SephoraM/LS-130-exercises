# Write a minitest assertion that will fail if the value.odd? is not true.

require 'minitest/autorun'
require "minitest/reporters"
Minitest::Reporters.use!

class ValueTest < MiniTest::Test
  def test_boolean
    value = 3
    assert_equal(true, value.odd?)
  end
end
