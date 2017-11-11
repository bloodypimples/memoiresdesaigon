require 'test_helper'

class BookingFormsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get booking_forms_create_url
    assert_response :success
  end

end
