require 'test_helper'

class PropertymanagementfirmsControllerTest < ActionController::TestCase
  setup do
    @propertymanagementfirm = propertymanagementfirms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propertymanagementfirms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propertymanagementfirm" do
    assert_difference('Propertymanagementfirm.count') do
      post :create, propertymanagementfirm: { address: @propertymanagementfirm.address, city: @propertymanagementfirm.city, company_description: @propertymanagementfirm.company_description, company_name: @propertymanagementfirm.company_name, company_phone: @propertymanagementfirm.company_phone, company_website: @propertymanagementfirm.company_website, contact_name: @propertymanagementfirm.contact_name, zipcode: @propertymanagementfirm.zipcode }
    end

    assert_redirected_to propertymanagementfirm_path(assigns(:propertymanagementfirm))
  end

  test "should show propertymanagementfirm" do
    get :show, id: @propertymanagementfirm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propertymanagementfirm
    assert_response :success
  end

  test "should update propertymanagementfirm" do
    patch :update, id: @propertymanagementfirm, propertymanagementfirm: { address: @propertymanagementfirm.address, city: @propertymanagementfirm.city, company_description: @propertymanagementfirm.company_description, company_name: @propertymanagementfirm.company_name, company_phone: @propertymanagementfirm.company_phone, company_website: @propertymanagementfirm.company_website, contact_name: @propertymanagementfirm.contact_name, zipcode: @propertymanagementfirm.zipcode }
    assert_redirected_to propertymanagementfirm_path(assigns(:propertymanagementfirm))
  end

  test "should destroy propertymanagementfirm" do
    assert_difference('Propertymanagementfirm.count', -1) do
      delete :destroy, id: @propertymanagementfirm
    end

    assert_redirected_to propertymanagementfirms_path
  end
end
