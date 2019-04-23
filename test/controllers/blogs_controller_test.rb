require 'test_helper'

class BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get not get admin because not logged in as admin" do
    get admin_path
    assert_response :redirect
  end

end
