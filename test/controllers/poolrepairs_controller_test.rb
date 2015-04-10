require 'test_helper'

class PoolrepairsControllerTest < ActionController::TestCase
  setup do
    @poolrepair = poolrepairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poolrepairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poolrepair" do
    assert_difference('Poolrepair.count') do
      post :create, poolrepair: { address: @poolrepair.address, city: @poolrepair.city, company_description: @poolrepair.company_description, company_name: @poolrepair.company_name, company_phone: @poolrepair.company_phone, company_website: @poolrepair.company_website, contact_name: @poolrepair.contact_name, email: @poolrepair.email, zipcode: @poolrepair.zipcode }
    end

    assert_redirected_to poolrepair_path(assigns(:poolrepair))
  end

  test "should show poolrepair" do
    get :show, id: @poolrepair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poolrepair
    assert_response :success
  end

  test "should update poolrepair" do
    patch :update, id: @poolrepair, poolrepair: { address: @poolrepair.address, city: @poolrepair.city, company_description: @poolrepair.company_description, company_name: @poolrepair.company_name, company_phone: @poolrepair.company_phone, company_website: @poolrepair.company_website, contact_name: @poolrepair.contact_name, email: @poolrepair.email, zipcode: @poolrepair.zipcode }
    assert_redirected_to poolrepair_path(assigns(:poolrepair))
  end

  test "should destroy poolrepair" do
    assert_difference('Poolrepair.count', -1) do
      delete :destroy, id: @poolrepair
    end

    assert_redirected_to poolrepairs_path
  end
end
