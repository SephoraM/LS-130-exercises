# Write a unit test that will fail if list and the return value of list.process are different objects.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class SameTest < MiniTest::Test
  def test_same
    assert_same(list, list.process)
  end
end
