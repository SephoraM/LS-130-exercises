require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TypeTest < MiniTest::Test
  def test_type
    assert_kind_of(Numeric, 1.5)
  end
end
