require 'test_helper'

class DynamicAttributesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Clear database
    Neo4j::ActiveBase.current_session.query('MATCH (n) DETACH DELETE n')
  end

  test "should show dynamic attribute" do
    @dynamic_attribute = DynamicAttribute.create

    get dynamic_attribute_url(@dynamic_attribute)
    assert_response :success

    get dynamic_attribute_url(@dynamic_attribute), as: :json
    assert_response :success
  end


end
