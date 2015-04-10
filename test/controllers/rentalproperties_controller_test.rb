require 'test_helper'

class RentalpropertiesControllerTest < ActionController::TestCase
  setup do
    @rentalproperty = rentalproperties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rentalproperties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rentalproperty" do
    assert_difference('Rentalproperty.count') do
      post :create, rentalproperty: { address: @rentalproperty.address, city: @rentalproperty.city, company_description: @rentalproperty.company_description, company_name: @rentalproperty.company_name, company_phone: @rentalproperty.company_phone, company_website: @rentalproperty.company_website, contact_name: @rentalproperty.contact_name, email: @rentalproperty.email, zipcode: @rentalproperty.zipcode }
    end

    assert_redirected_to rentalproperty_path(assigns(:rentalproperty))
  end

  test "should show rentalproperty" do
    get :show, id: @rentalproperty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rentalproperty
    assert_response :success
  end

  test "should update rentalproperty" do
    patch :update, id: @rentalproperty, rentalproperty: { address: @rentalproperty.address, city: @rentalproperty.city, company_description: @rentalproperty.company_description, company_name: @rentalproperty.company_name, company_phone: @rentalproperty.company_phone, company_website: @rentalproperty.company_website, contact_name: @rentalproperty.contact_name, email: @rentalproperty.email, zipcode: @rentalproperty.zipcode }
    assert_redirected_to rentalproperty_path(assigns(:rentalproperty))
  end

  test "should destroy rentalproperty" do
    assert_difference('Rentalproperty.count', -1) do
      delete :destroy, id: @rentalproperty
    end

    assert_redirected_to rentalproperties_path
  end
end
