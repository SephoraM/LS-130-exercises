#Write a unit test that will fail if 'xyz' is one of the elements in the Array list:

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class NoIncludeTest < MiniTest::Test
  def test_refute_includes
    list = ['xy', 'zy']
    refute_includes(list, 'xyz')
  end
end
