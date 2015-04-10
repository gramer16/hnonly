require 'test_helper'

class CashbuyersControllerTest < ActionController::TestCase
  setup do
    @cashbuyer = cashbuyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashbuyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashbuyer" do
    assert_difference('Cashbuyer.count') do
      post :create, cashbuyer: { address: @cashbuyer.address, city: @cashbuyer.city, company_description: @cashbuyer.company_description, company_name: @cashbuyer.company_name, company_phone: @cashbuyer.company_phone, company_website: @cashbuyer.company_website, contact_name: @cashbuyer.contact_name, email: @cashbuyer.email, zipcode: @cashbuyer.zipcode }
    end

    assert_redirected_to cashbuyer_path(assigns(:cashbuyer))
  end

  test "should show cashbuyer" do
    get :show, id: @cashbuyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashbuyer
    assert_response :success
  end

  test "should update cashbuyer" do
    patch :update, id: @cashbuyer, cashbuyer: { address: @cashbuyer.address, city: @cashbuyer.city, company_description: @cashbuyer.company_description, company_name: @cashbuyer.company_name, company_phone: @cashbuyer.company_phone, company_website: @cashbuyer.company_website, contact_name: @cashbuyer.contact_name, email: @cashbuyer.email, zipcode: @cashbuyer.zipcode }
    assert_redirected_to cashbuyer_path(assigns(:cashbuyer))
  end

  test "should destroy cashbuyer" do
    assert_difference('Cashbuyer.count', -1) do
      delete :destroy, id: @cashbuyer
    end

    assert_redirected_to cashbuyers_path
  end
end
