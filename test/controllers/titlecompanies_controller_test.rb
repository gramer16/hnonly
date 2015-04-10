require 'test_helper'

class TitlecompaniesControllerTest < ActionController::TestCase
  setup do
    @titlecompany = titlecompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:titlecompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create titlecompany" do
    assert_difference('Titlecompany.count') do
      post :create, titlecompany: { address: @titlecompany.address, city: @titlecompany.city, company_description: @titlecompany.company_description, company_name: @titlecompany.company_name, company_phone: @titlecompany.company_phone, company_website: @titlecompany.company_website, contact_name: @titlecompany.contact_name, email: @titlecompany.email, zipcode: @titlecompany.zipcode }
    end

    assert_redirected_to titlecompany_path(assigns(:titlecompany))
  end

  test "should show titlecompany" do
    get :show, id: @titlecompany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @titlecompany
    assert_response :success
  end

  test "should update titlecompany" do
    patch :update, id: @titlecompany, titlecompany: { address: @titlecompany.address, city: @titlecompany.city, company_description: @titlecompany.company_description, company_name: @titlecompany.company_name, company_phone: @titlecompany.company_phone, company_website: @titlecompany.company_website, contact_name: @titlecompany.contact_name, email: @titlecompany.email, zipcode: @titlecompany.zipcode }
    assert_redirected_to titlecompany_path(assigns(:titlecompany))
  end

  test "should destroy titlecompany" do
    assert_difference('Titlecompany.count', -1) do
      delete :destroy, id: @titlecompany
    end

    assert_redirected_to titlecompanies_path
  end
end
