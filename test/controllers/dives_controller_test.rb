require 'test_helper'

class DivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    # Clear database
    Neo4j::ActiveBase.current_session.query('MATCH (n) DETACH DELETE n')
    @dive = Dive.create
  end

  test "should get index" do
    get dives_url
    assert_response :success

    get dives_url, as: :json
    assert_response :success
  end

  test "should get new" do
    get new_dife_url
    assert_response :success
  end

  test "should create dive" do
    assert_difference('Dive.count') do
      post dives_url, params: { dive: { title: 'title1 '  } }
    end

    assert_redirected_to dife_url(Dive.all.order_by(:created_at).last)

    assert_difference('Dive.count') do
      post dives_url, params: { dive: { title: 'title1 '  } }, as: :json
      assert_response :created
    end
  end

  test "should show dive" do
    get dife_url(@dive)
    assert_response :success

    get dife_url(@dive), as: :json
    assert_response :success
  end

  test "should get edit" do
    get edit_dife_url(@dive)
    assert_response :success
  end

  test "should update dive" do
    patch dife_url(@dive), params: { dive: { title: 'updated'  } }
    assert_redirected_to dife_url(@dive)

    patch dife_url(@dive), params: { dive: { title: 'updated json'  } }, as: :json
    assert_response :created

  end

  test "should destroy dive" do
    assert_difference('Dive.count', -1) do
      delete dife_url(@dive)
    end

    assert_redirected_to dives_url

    @dive = Dive.create
    assert_difference('Dive.count', -1) do
      delete dife_url(@dive), as: :json
      assert_response :success
    end
  end
end
