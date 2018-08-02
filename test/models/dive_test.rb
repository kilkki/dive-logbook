require 'test_helper'

class DiveTest < ActiveSupport::TestCase
  test "Create dive" do
    d = Dive.create
    da = DynamicAttribute.create
    av = AttributeValue.create(dive: d)
    av.dive = d
    av.dynamic_attribute = da

    assert_equal 1, d.attribute_values.count
    assert_equal 1, da.dynamic_attributes.count
  end
end