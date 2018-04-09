require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class EmptyTest < MiniTest::Test
  def test_empty
    assert_empty([])
  end
end
