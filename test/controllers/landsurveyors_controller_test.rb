require 'test_helper'

class LandsurveyorsControllerTest < ActionController::TestCase
  setup do
    @landsurveyor = landsurveyors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landsurveyors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landsurveyor" do
    assert_difference('Landsurveyor.count') do
      post :create, landsurveyor: { address: @landsurveyor.address, city: @landsurveyor.city, company_description: @landsurveyor.company_description, company_name: @landsurveyor.company_name, company_phone: @landsurveyor.company_phone, company_website: @landsurveyor.company_website, contact_name: @landsurveyor.contact_name, zipcode: @landsurveyor.zipcode }
    end

    assert_redirected_to landsurveyor_path(assigns(:landsurveyor))
  end

  test "should show landsurveyor" do
    get :show, id: @landsurveyor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landsurveyor
    assert_response :success
  end

  test "should update landsurveyor" do
    patch :update, id: @landsurveyor, landsurveyor: { address: @landsurveyor.address, city: @landsurveyor.city, company_description: @landsurveyor.company_description, company_name: @landsurveyor.company_name, company_phone: @landsurveyor.company_phone, company_website: @landsurveyor.company_website, contact_name: @landsurveyor.contact_name, zipcode: @landsurveyor.zipcode }
    assert_redirected_to landsurveyor_path(assigns(:landsurveyor))
  end

  test "should destroy landsurveyor" do
    assert_difference('Landsurveyor.count', -1) do
      delete :destroy, id: @landsurveyor
    end

    assert_redirected_to landsurveyors_path
  end
end
