require 'test_helper'

class HardmoneysControllerTest < ActionController::TestCase
  setup do
    @hardmoney = hardmoneys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hardmoneys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hardmoney" do
    assert_difference('Hardmoney.count') do
      post :create, hardmoney: { address: @hardmoney.address, city: @hardmoney.city, company_description: @hardmoney.company_description, company_name: @hardmoney.company_name, company_phone: @hardmoney.company_phone, company_website: @hardmoney.company_website, contact_name: @hardmoney.contact_name, zipcode: @hardmoney.zipcode }
    end

    assert_redirected_to hardmoney_path(assigns(:hardmoney))
  end

  test "should show hardmoney" do
    get :show, id: @hardmoney
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hardmoney
    assert_response :success
  end

  test "should update hardmoney" do
    patch :update, id: @hardmoney, hardmoney: { address: @hardmoney.address, city: @hardmoney.city, company_description: @hardmoney.company_description, company_name: @hardmoney.company_name, company_phone: @hardmoney.company_phone, company_website: @hardmoney.company_website, contact_name: @hardmoney.contact_name, zipcode: @hardmoney.zipcode }
    assert_redirected_to hardmoney_path(assigns(:hardmoney))
  end

  test "should destroy hardmoney" do
    assert_difference('Hardmoney.count', -1) do
      delete :destroy, id: @hardmoney
    end

    assert_redirected_to hardmoneys_path
  end
end
