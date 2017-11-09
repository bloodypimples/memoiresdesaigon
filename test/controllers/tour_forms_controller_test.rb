require 'test_helper'

class TourFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get tour_forms_create_url
    assert_response :success
  end

  test "should get destroy" do
    get tour_forms_destroy_url
    assert_response :success
  end

end
