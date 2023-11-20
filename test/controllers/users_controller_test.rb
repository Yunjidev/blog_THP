require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get users_show_url
    assert_response :success
  end

  test "should get update_article_privacy" do
    get users_update_article_privacy_url
    assert_response :success
  end
end
