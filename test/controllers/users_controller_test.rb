require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get change" do
    get users_change_url
    assert_response :success
  end
end
