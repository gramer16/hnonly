require 'test_helper'

class RealtorsControllerTest < ActionController::TestCase
  setup do
    @realtor = realtors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:realtors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create realtor" do
    assert_difference('Realtor.count') do
      post :create, realtor: { address: @realtor.address, city: @realtor.city, company_description: @realtor.company_description, company_name: @realtor.company_name, company_phone: @realtor.company_phone, company_website: @realtor.company_website, contact_name: @realtor.contact_name, zipcode: @realtor.zipcode }
    end

    assert_redirected_to realtor_path(assigns(:realtor))
  end

  test "should show realtor" do
    get :show, id: @realtor
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @realtor
    assert_response :success
  end

  test "should update realtor" do
    patch :update, id: @realtor, realtor: { address: @realtor.address, city: @realtor.city, company_description: @realtor.company_description, company_name: @realtor.company_name, company_phone: @realtor.company_phone, company_website: @realtor.company_website, contact_name: @realtor.contact_name, zipcode: @realtor.zipcode }
    assert_redirected_to realtor_path(assigns(:realtor))
  end

  test "should destroy realtor" do
    assert_difference('Realtor.count', -1) do
      delete :destroy, id: @realtor
    end

    assert_redirected_to realtors_path
  end
end
