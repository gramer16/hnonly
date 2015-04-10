require 'test_helper'

class InteriordesignersControllerTest < ActionController::TestCase
  setup do
    @interiordesigner = interiordesigners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:interiordesigners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create interiordesigner" do
    assert_difference('Interiordesigner.count') do
      post :create, interiordesigner: { address: @interiordesigner.address, city: @interiordesigner.city, company_description: @interiordesigner.company_description, company_name: @interiordesigner.company_name, company_phone: @interiordesigner.company_phone, company_website: @interiordesigner.company_website, contact_name: @interiordesigner.contact_name, email: @interiordesigner.email, zipcode: @interiordesigner.zipcode }
    end

    assert_redirected_to interiordesigner_path(assigns(:interiordesigner))
  end

  test "should show interiordesigner" do
    get :show, id: @interiordesigner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @interiordesigner
    assert_response :success
  end

  test "should update interiordesigner" do
    patch :update, id: @interiordesigner, interiordesigner: { address: @interiordesigner.address, city: @interiordesigner.city, company_description: @interiordesigner.company_description, company_name: @interiordesigner.company_name, company_phone: @interiordesigner.company_phone, company_website: @interiordesigner.company_website, contact_name: @interiordesigner.contact_name, email: @interiordesigner.email, zipcode: @interiordesigner.zipcode }
    assert_redirected_to interiordesigner_path(assigns(:interiordesigner))
  end

  test "should destroy interiordesigner" do
    assert_difference('Interiordesigner.count', -1) do
      delete :destroy, id: @interiordesigner
    end

    assert_redirected_to interiordesigners_path
  end
end
