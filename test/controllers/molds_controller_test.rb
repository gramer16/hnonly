require 'test_helper'

class MoldsControllerTest < ActionController::TestCase
  setup do
    @mold = molds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:molds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mold" do
    assert_difference('Mold.count') do
      post :create, mold: { address: @mold.address, city: @mold.city, company_description: @mold.company_description, company_name: @mold.company_name, company_phone: @mold.company_phone, company_website: @mold.company_website, contact_name: @mold.contact_name, zipcode: @mold.zipcode }
    end

    assert_redirected_to mold_path(assigns(:mold))
  end

  test "should show mold" do
    get :show, id: @mold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mold
    assert_response :success
  end

  test "should update mold" do
    patch :update, id: @mold, mold: { address: @mold.address, city: @mold.city, company_description: @mold.company_description, company_name: @mold.company_name, company_phone: @mold.company_phone, company_website: @mold.company_website, contact_name: @mold.contact_name, zipcode: @mold.zipcode }
    assert_redirected_to mold_path(assigns(:mold))
  end

  test "should destroy mold" do
    assert_difference('Mold.count', -1) do
      delete :destroy, id: @mold
    end

    assert_redirected_to molds_path
  end
end
