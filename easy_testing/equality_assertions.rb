# Write a minitest assertion that will fail if value.downcase does not return 'xyz'.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class EqualityTest < MiniTest::Test
  def test_xyz
    value = 'xyz'
    assert_equal('xyz', value.downcase)
  end
end
