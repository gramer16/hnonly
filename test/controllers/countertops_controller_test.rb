require 'test_helper'

class CountertopsControllerTest < ActionController::TestCase
  setup do
    @countertop = countertops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countertops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create countertop" do
    assert_difference('Countertop.count') do
      post :create, countertop: { address: @countertop.address, city: @countertop.city, company_description: @countertop.company_description, company_name: @countertop.company_name, company_phone: @countertop.company_phone, company_website: @countertop.company_website, contact_name: @countertop.contact_name, email: @countertop.email, zipcode: @countertop.zipcode }
    end

    assert_redirected_to countertop_path(assigns(:countertop))
  end

  test "should show countertop" do
    get :show, id: @countertop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @countertop
    assert_response :success
  end

  test "should update countertop" do
    patch :update, id: @countertop, countertop: { address: @countertop.address, city: @countertop.city, company_description: @countertop.company_description, company_name: @countertop.company_name, company_phone: @countertop.company_phone, company_website: @countertop.company_website, contact_name: @countertop.contact_name, email: @countertop.email, zipcode: @countertop.zipcode }
    assert_redirected_to countertop_path(assigns(:countertop))
  end

  test "should destroy countertop" do
    assert_difference('Countertop.count', -1) do
      delete :destroy, id: @countertop
    end

    assert_redirected_to countertops_path
  end
end
