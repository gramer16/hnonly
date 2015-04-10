require 'test_helper'

class RoofingsControllerTest < ActionController::TestCase
  setup do
    @roofing = roofings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:roofings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roofing" do
    assert_difference('Roofing.count') do
      post :create, roofing: { address: @roofing.address, city: @roofing.city, company_description: @roofing.company_description, company_name: @roofing.company_name, company_phone: @roofing.company_phone, company_website: @roofing.company_website, contact_name: @roofing.contact_name, zipcode: @roofing.zipcode }
    end

    assert_redirected_to roofing_path(assigns(:roofing))
  end

  test "should show roofing" do
    get :show, id: @roofing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roofing
    assert_response :success
  end

  test "should update roofing" do
    patch :update, id: @roofing, roofing: { address: @roofing.address, city: @roofing.city, company_description: @roofing.company_description, company_name: @roofing.company_name, company_phone: @roofing.company_phone, company_website: @roofing.company_website, contact_name: @roofing.contact_name, zipcode: @roofing.zipcode }
    assert_redirected_to roofing_path(assigns(:roofing))
  end

  test "should destroy roofing" do
    assert_difference('Roofing.count', -1) do
      delete :destroy, id: @roofing
    end

    assert_redirected_to roofings_path
  end
end
