require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get stay" do
    get pages_stay_url
    assert_response :success
  end

  test "should get explore" do
    get pages_explore_url
    assert_response :success
  end

  test "should get share" do
    get pages_share_url
    assert_response :success
  end

  test "should get contact" do
    get pages_contact_url
    assert_response :success
  end

end
