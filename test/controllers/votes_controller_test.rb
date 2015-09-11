require 'test_helper'

class VotesControllerTest < ActionController::TestCase
  test "should get request_id:integer" do
    get :request_id:integer
    assert_response :success
  end

  test "should get user_id:integer" do
    get :user_id:integer
    assert_response :success
  end

end
