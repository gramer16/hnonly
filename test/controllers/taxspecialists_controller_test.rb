require 'test_helper'

class TaxspecialistsControllerTest < ActionController::TestCase
  setup do
    @taxspecialist = taxspecialists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:taxspecialists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create taxspecialist" do
    assert_difference('Taxspecialist.count') do
      post :create, taxspecialist: { address: @taxspecialist.address, city: @taxspecialist.city, company_description: @taxspecialist.company_description, company_name: @taxspecialist.company_name, company_phone: @taxspecialist.company_phone, company_website: @taxspecialist.company_website, contact_name: @taxspecialist.contact_name, email: @taxspecialist.email, zipcode: @taxspecialist.zipcode }
    end

    assert_redirected_to taxspecialist_path(assigns(:taxspecialist))
  end

  test "should show taxspecialist" do
    get :show, id: @taxspecialist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @taxspecialist
    assert_response :success
  end

  test "should update taxspecialist" do
    patch :update, id: @taxspecialist, taxspecialist: { address: @taxspecialist.address, city: @taxspecialist.city, company_description: @taxspecialist.company_description, company_name: @taxspecialist.company_name, company_phone: @taxspecialist.company_phone, company_website: @taxspecialist.company_website, contact_name: @taxspecialist.contact_name, email: @taxspecialist.email, zipcode: @taxspecialist.zipcode }
    assert_redirected_to taxspecialist_path(assigns(:taxspecialist))
  end

  test "should destroy taxspecialist" do
    assert_difference('Taxspecialist.count', -1) do
      delete :destroy, id: @taxspecialist
    end

    assert_redirected_to taxspecialists_path
  end
end
