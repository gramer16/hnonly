require 'test_helper'

class CustomcabinetsControllerTest < ActionController::TestCase
  setup do
    @customcabinet = customcabinets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customcabinets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customcabinet" do
    assert_difference('Customcabinet.count') do
      post :create, customcabinet: { address: @customcabinet.address, city: @customcabinet.city, company_description: @customcabinet.company_description, company_name: @customcabinet.company_name, company_phone: @customcabinet.company_phone, company_website: @customcabinet.company_website, contact_name: @customcabinet.contact_name, email: @customcabinet.email, zipcode: @customcabinet.zipcode }
    end

    assert_redirected_to customcabinet_path(assigns(:customcabinet))
  end

  test "should show customcabinet" do
    get :show, id: @customcabinet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customcabinet
    assert_response :success
  end

  test "should update customcabinet" do
    patch :update, id: @customcabinet, customcabinet: { address: @customcabinet.address, city: @customcabinet.city, company_description: @customcabinet.company_description, company_name: @customcabinet.company_name, company_phone: @customcabinet.company_phone, company_website: @customcabinet.company_website, contact_name: @customcabinet.contact_name, email: @customcabinet.email, zipcode: @customcabinet.zipcode }
    assert_redirected_to customcabinet_path(assigns(:customcabinet))
  end

  test "should destroy customcabinet" do
    assert_difference('Customcabinet.count', -1) do
      delete :destroy, id: @customcabinet
    end

    assert_redirected_to customcabinets_path
  end
end
