# Write a minitest assertion that will fail unless employee.hire raises a
# NoExperienceError exception.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class ExceptionTest < MiniTest::Test
  def test_exception
    assert_raises(NoExperienceError) { employee.hire }
  end
end
