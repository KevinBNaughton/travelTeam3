require 'test_helper'

class RequestsControllerTest < ActionDispatch::IntegrationTest
  test "should not get new because not logged in" do
    get requests_new_url
    assert_response :redirect
  end

end
