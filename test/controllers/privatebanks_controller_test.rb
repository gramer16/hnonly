require 'test_helper'

class PrivatebanksControllerTest < ActionController::TestCase
  setup do
    @privatebank = privatebanks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privatebanks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privatebank" do
    assert_difference('Privatebank.count') do
      post :create, privatebank: { address: @privatebank.address, city: @privatebank.city, company_description: @privatebank.company_description, company_name: @privatebank.company_name, company_phone: @privatebank.company_phone, company_website: @privatebank.company_website, contact_name: @privatebank.contact_name, zipcode: @privatebank.zipcode }
    end

    assert_redirected_to privatebank_path(assigns(:privatebank))
  end

  test "should show privatebank" do
    get :show, id: @privatebank
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privatebank
    assert_response :success
  end

  test "should update privatebank" do
    patch :update, id: @privatebank, privatebank: { address: @privatebank.address, city: @privatebank.city, company_description: @privatebank.company_description, company_name: @privatebank.company_name, company_phone: @privatebank.company_phone, company_website: @privatebank.company_website, contact_name: @privatebank.contact_name, zipcode: @privatebank.zipcode }
    assert_redirected_to privatebank_path(assigns(:privatebank))
  end

  test "should destroy privatebank" do
    assert_difference('Privatebank.count', -1) do
      delete :destroy, id: @privatebank
    end

    assert_redirected_to privatebanks_path
  end
end
