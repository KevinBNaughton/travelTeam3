require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get admin_path
    assert_response :success
  end

end
