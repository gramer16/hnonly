require 'test_helper'

class PrivatefirmsControllerTest < ActionController::TestCase
  setup do
    @privatefirm = privatefirms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:privatefirms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create privatefirm" do
    assert_difference('Privatefirm.count') do
      post :create, privatefirm: { address: @privatefirm.address, city: @privatefirm.city, company_description: @privatefirm.company_description, company_name: @privatefirm.company_name, company_phone: @privatefirm.company_phone, company_website: @privatefirm.company_website, contact_name: @privatefirm.contact_name, zipcode: @privatefirm.zipcode }
    end

    assert_redirected_to privatefirm_path(assigns(:privatefirm))
  end

  test "should show privatefirm" do
    get :show, id: @privatefirm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @privatefirm
    assert_response :success
  end

  test "should update privatefirm" do
    patch :update, id: @privatefirm, privatefirm: { address: @privatefirm.address, city: @privatefirm.city, company_description: @privatefirm.company_description, company_name: @privatefirm.company_name, company_phone: @privatefirm.company_phone, company_website: @privatefirm.company_website, contact_name: @privatefirm.contact_name, zipcode: @privatefirm.zipcode }
    assert_redirected_to privatefirm_path(assigns(:privatefirm))
  end

  test "should destroy privatefirm" do
    assert_difference('Privatefirm.count', -1) do
      delete :destroy, id: @privatefirm
    end

    assert_redirected_to privatefirms_path
  end
end
