require 'test_helper'

class GeneralcontractorsControllerTest < ActionController::TestCase
  setup do
    @generalcontractor = generalcontractors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generalcontractors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generalcontractor" do
    assert_difference('Generalcontractor.count') do
      post :create, generalcontractor: { address: @generalcontractor.address, city: @generalcontractor.city, company_description: @generalcontractor.company_description, company_name: @generalcontractor.company_name, company_phone: @generalcontractor.company_phone, company_website: @generalcontractor.company_website, contact_name: @generalcontractor.contact_name, zipcode: @generalcontractor.zipcode }
    end

    assert_redirected_to generalcontractor_path(assigns(:generalcontractor))
  end

  test "should show generalcontractor" do
    get :show, id: @generalcontractor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generalcontractor
    assert_response :success
  end

  test "should update generalcontractor" do
    patch :update, id: @generalcontractor, generalcontractor: { address: @generalcontractor.address, city: @generalcontractor.city, company_description: @generalcontractor.company_description, company_name: @generalcontractor.company_name, company_phone: @generalcontractor.company_phone, company_website: @generalcontractor.company_website, contact_name: @generalcontractor.contact_name, zipcode: @generalcontractor.zipcode }
    assert_redirected_to generalcontractor_path(assigns(:generalcontractor))
  end

  test "should destroy generalcontractor" do
    assert_difference('Generalcontractor.count', -1) do
      delete :destroy, id: @generalcontractor
    end

    assert_redirected_to generalcontractors_path
  end
end
