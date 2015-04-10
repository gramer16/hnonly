require 'test_helper'

class LandscapingsControllerTest < ActionController::TestCase
  setup do
    @landscaping = landscapings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landscapings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landscaping" do
    assert_difference('Landscaping.count') do
      post :create, landscaping: { address: @landscaping.address, city: @landscaping.city, company_description: @landscaping.company_description, company_name: @landscaping.company_name, company_phone: @landscaping.company_phone, company_website: @landscaping.company_website, contact_name: @landscaping.contact_name, zipcode: @landscaping.zipcode }
    end

    assert_redirected_to landscaping_path(assigns(:landscaping))
  end

  test "should show landscaping" do
    get :show, id: @landscaping
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landscaping
    assert_response :success
  end

  test "should update landscaping" do
    patch :update, id: @landscaping, landscaping: { address: @landscaping.address, city: @landscaping.city, company_description: @landscaping.company_description, company_name: @landscaping.company_name, company_phone: @landscaping.company_phone, company_website: @landscaping.company_website, contact_name: @landscaping.contact_name, zipcode: @landscaping.zipcode }
    assert_redirected_to landscaping_path(assigns(:landscaping))
  end

  test "should destroy landscaping" do
    assert_difference('Landscaping.count', -1) do
      delete :destroy, id: @landscaping
    end

    assert_redirected_to landscapings_path
  end
end
