require 'test_helper'

class RealEstatefirmsControllerTest < ActionController::TestCase
  setup do
    @real_estatefirm = real_estatefirms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:real_estatefirms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create real_estatefirm" do
    assert_difference('RealEstatefirm.count') do
      post :create, real_estatefirm: { address: @real_estatefirm.address, city: @real_estatefirm.city, company_description: @real_estatefirm.company_description, company_name: @real_estatefirm.company_name, company_phone: @real_estatefirm.company_phone, company_website: @real_estatefirm.company_website, contact_name: @real_estatefirm.contact_name, zipcode: @real_estatefirm.zipcode }
    end

    assert_redirected_to real_estatefirm_path(assigns(:real_estatefirm))
  end

  test "should show real_estatefirm" do
    get :show, id: @real_estatefirm
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @real_estatefirm
    assert_response :success
  end

  test "should update real_estatefirm" do
    patch :update, id: @real_estatefirm, real_estatefirm: { address: @real_estatefirm.address, city: @real_estatefirm.city, company_description: @real_estatefirm.company_description, company_name: @real_estatefirm.company_name, company_phone: @real_estatefirm.company_phone, company_website: @real_estatefirm.company_website, contact_name: @real_estatefirm.contact_name, zipcode: @real_estatefirm.zipcode }
    assert_redirected_to real_estatefirm_path(assigns(:real_estatefirm))
  end

  test "should destroy real_estatefirm" do
    assert_difference('RealEstatefirm.count', -1) do
      delete :destroy, id: @real_estatefirm
    end

    assert_redirected_to real_estatefirms_path
  end
end
