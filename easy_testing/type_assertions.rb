# Write a minitest assertion that will fail if value is not an instance of the
# Numeric class exactly. value may not be an instance of one of Numeric's
# superclasses.

require 'minitest/autorun'
require 'minitest/reporters'
MiniTest::Reporters.use!

class TypeTest < MiniTest::Test
  def test_type
    assert_instance_of(String, "string")
  end
end
