require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class IncludeTest < MiniTest::Test
  def test_includes
    list = ['xy', 'zy', 'xyz']
    assert_includes(list, 'xyz')
  end
end
