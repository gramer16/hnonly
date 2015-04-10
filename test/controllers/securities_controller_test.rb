require 'test_helper'

class SecuritiesControllerTest < ActionController::TestCase
  setup do
    @security = securities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:securities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create security" do
    assert_difference('Security.count') do
      post :create, security: { address: @security.address, city: @security.city, company_description: @security.company_description, company_name: @security.company_name, company_phone: @security.company_phone, company_website: @security.company_website, contact_name: @security.contact_name, email: @security.email, zipcode: @security.zipcode }
    end

    assert_redirected_to security_path(assigns(:security))
  end

  test "should show security" do
    get :show, id: @security
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @security
    assert_response :success
  end

  test "should update security" do
    patch :update, id: @security, security: { address: @security.address, city: @security.city, company_description: @security.company_description, company_name: @security.company_name, company_phone: @security.company_phone, company_website: @security.company_website, contact_name: @security.contact_name, email: @security.email, zipcode: @security.zipcode }
    assert_redirected_to security_path(assigns(:security))
  end

  test "should destroy security" do
    assert_difference('Security.count', -1) do
      delete :destroy, id: @security
    end

    assert_redirected_to securities_path
  end
end
