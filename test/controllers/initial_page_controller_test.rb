require 'test_helper'

class InitialPageControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "Bochitto Travel"
  end

  test "should get root" do
    get root_path
    assert_response :success
  end

  test "should get home" do
    get home_path
    assert_response :success
    assert_select "title", "Home | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should not get admin because not logged in as admin" do
  get admin_path
  assert_response :redirect
  assert_select "title", "Admin | #{@base_title}"
end

end
