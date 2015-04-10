require 'test_helper'

class PoolcleanersControllerTest < ActionController::TestCase
  setup do
    @poolcleaner = poolcleaners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poolcleaners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poolcleaner" do
    assert_difference('Poolcleaner.count') do
      post :create, poolcleaner: { address: @poolcleaner.address, city: @poolcleaner.city, company_description: @poolcleaner.company_description, company_name: @poolcleaner.company_name, company_phone: @poolcleaner.company_phone, company_website: @poolcleaner.company_website, contact_name: @poolcleaner.contact_name, email: @poolcleaner.email, zipcode: @poolcleaner.zipcode }
    end

    assert_redirected_to poolcleaner_path(assigns(:poolcleaner))
  end

  test "should show poolcleaner" do
    get :show, id: @poolcleaner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poolcleaner
    assert_response :success
  end

  test "should update poolcleaner" do
    patch :update, id: @poolcleaner, poolcleaner: { address: @poolcleaner.address, city: @poolcleaner.city, company_description: @poolcleaner.company_description, company_name: @poolcleaner.company_name, company_phone: @poolcleaner.company_phone, company_website: @poolcleaner.company_website, contact_name: @poolcleaner.contact_name, email: @poolcleaner.email, zipcode: @poolcleaner.zipcode }
    assert_redirected_to poolcleaner_path(assigns(:poolcleaner))
  end

  test "should destroy poolcleaner" do
    assert_difference('Poolcleaner.count', -1) do
      delete :destroy, id: @poolcleaner
    end

    assert_redirected_to poolcleaners_path
  end
end
