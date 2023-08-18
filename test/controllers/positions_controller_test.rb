require "test_helper"

class PositionsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @available_position = positions(:available)
    @not_available_position = positions(:not_available)
  end

  test "should get index if logged in" do
    sign_in users(:user)
    get positions_url
    assert_response :success
  end

  test "should redirect get index if not logged in" do
    get positions_url
    assert_response :redirect
  end

  test "should show available position" do
    sign_in users(:user)
    get position_url(@available_position)
    assert_response :success
  end

  test "should create application" do
    sign_in users(:user)
    assert_difference("Application.count") do
      post application_position_path(@available_position.id)
    end
  end

  test "should delete application" do
    sign_in users(:user)
    assert_difference("Application.count", -1) do
      delete application_position_path(@available_position.id)
    end
  end
end
