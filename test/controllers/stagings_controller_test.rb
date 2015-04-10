require 'test_helper'

class StagingsControllerTest < ActionController::TestCase
  setup do
    @staging = stagings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stagings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staging" do
    assert_difference('Staging.count') do
      post :create, staging: { address: @staging.address, city: @staging.city, company_description: @staging.company_description, company_name: @staging.company_name, company_phone: @staging.company_phone, company_website: @staging.company_website, contact_name: @staging.contact_name, email: @staging.email, zipcode: @staging.zipcode }
    end

    assert_redirected_to staging_path(assigns(:staging))
  end

  test "should show staging" do
    get :show, id: @staging
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staging
    assert_response :success
  end

  test "should update staging" do
    patch :update, id: @staging, staging: { address: @staging.address, city: @staging.city, company_description: @staging.company_description, company_name: @staging.company_name, company_phone: @staging.company_phone, company_website: @staging.company_website, contact_name: @staging.contact_name, email: @staging.email, zipcode: @staging.zipcode }
    assert_redirected_to staging_path(assigns(:staging))
  end

  test "should destroy staging" do
    assert_difference('Staging.count', -1) do
      delete :destroy, id: @staging
    end

    assert_redirected_to stagings_path
  end
end
