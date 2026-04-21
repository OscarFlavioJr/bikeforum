require "test_helper"

class UserBikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_bike = user_bikes(:one)
  end

  test "should get index" do
    get user_bikes_url, as: :json
    assert_response :success
  end

  test "should create user_bike" do
    assert_difference("UserBike.count") do
      post user_bikes_url, params: { user_bike: { \: @user_bike.\, bike_id: @user_bike.bike_id, user_id: @user_bike.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_bike" do
    get user_bike_url(@user_bike), as: :json
    assert_response :success
  end

  test "should update user_bike" do
    patch user_bike_url(@user_bike), params: { user_bike: { \: @user_bike.\, bike_id: @user_bike.bike_id, user_id: @user_bike.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_bike" do
    assert_difference("UserBike.count", -1) do
      delete user_bike_url(@user_bike), as: :json
    end

    assert_response :no_content
  end
end
