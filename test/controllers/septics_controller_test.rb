require 'test_helper'

class SepticsControllerTest < ActionController::TestCase
  setup do
    @septic = septics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:septics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create septic" do
    assert_difference('Septic.count') do
      post :create, septic: { address: @septic.address, city: @septic.city, company_description: @septic.company_description, company_name: @septic.company_name, company_phone: @septic.company_phone, company_website: @septic.company_website, contact_name: @septic.contact_name, email: @septic.email, zipcode: @septic.zipcode }
    end

    assert_redirected_to septic_path(assigns(:septic))
  end

  test "should show septic" do
    get :show, id: @septic
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @septic
    assert_response :success
  end

  test "should update septic" do
    patch :update, id: @septic, septic: { address: @septic.address, city: @septic.city, company_description: @septic.company_description, company_name: @septic.company_name, company_phone: @septic.company_phone, company_website: @septic.company_website, contact_name: @septic.contact_name, email: @septic.email, zipcode: @septic.zipcode }
    assert_redirected_to septic_path(assigns(:septic))
  end

  test "should destroy septic" do
    assert_difference('Septic.count', -1) do
      delete :destroy, id: @septic
    end

    assert_redirected_to septics_path
  end
end
