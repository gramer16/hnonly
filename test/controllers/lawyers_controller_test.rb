require 'test_helper'

class LawyersControllerTest < ActionController::TestCase
  setup do
    @lawyer = lawyers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lawyers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lawyer" do
    assert_difference('Lawyer.count') do
      post :create, lawyer: { address: @lawyer.address, city: @lawyer.city, company_description: @lawyer.company_description, company_name: @lawyer.company_name, company_phone: @lawyer.company_phone, company_website: @lawyer.company_website, contact_name: @lawyer.contact_name, email: @lawyer.email, zipcode: @lawyer.zipcode }
    end

    assert_redirected_to lawyer_path(assigns(:lawyer))
  end

  test "should show lawyer" do
    get :show, id: @lawyer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lawyer
    assert_response :success
  end

  test "should update lawyer" do
    patch :update, id: @lawyer, lawyer: { address: @lawyer.address, city: @lawyer.city, company_description: @lawyer.company_description, company_name: @lawyer.company_name, company_phone: @lawyer.company_phone, company_website: @lawyer.company_website, contact_name: @lawyer.contact_name, email: @lawyer.email, zipcode: @lawyer.zipcode }
    assert_redirected_to lawyer_path(assigns(:lawyer))
  end

  test "should destroy lawyer" do
    assert_difference('Lawyer.count', -1) do
      delete :destroy, id: @lawyer
    end

    assert_redirected_to lawyers_path
  end
end
