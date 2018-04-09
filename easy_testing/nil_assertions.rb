require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class NilTest < MiniTest::Test
  def test_nil
    value = nil
    assert_nil(value)
  end
end
