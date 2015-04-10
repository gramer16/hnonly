require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get membership" do
    get :membership
    assert_response :success
  end

  test "should get contactus" do
    get :contactus
    assert_response :success
  end

end
