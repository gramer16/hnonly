require 'test_helper'

class AirconditionersControllerTest < ActionController::TestCase
  setup do
    @airconditioner = airconditioners(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:airconditioners)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create airconditioner" do
    assert_difference('Airconditioner.count') do
      post :create, airconditioner: { address: @airconditioner.address, city: @airconditioner.city, company_description: @airconditioner.company_description, company_name: @airconditioner.company_name, company_phone: @airconditioner.company_phone, company_website: @airconditioner.company_website, contact_name: @airconditioner.contact_name, zipcode: @airconditioner.zipcode }
    end

    assert_redirected_to airconditioner_path(assigns(:airconditioner))
  end

  test "should show airconditioner" do
    get :show, id: @airconditioner
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @airconditioner
    assert_response :success
  end

  test "should update airconditioner" do
    patch :update, id: @airconditioner, airconditioner: { address: @airconditioner.address, city: @airconditioner.city, company_description: @airconditioner.company_description, company_name: @airconditioner.company_name, company_phone: @airconditioner.company_phone, company_website: @airconditioner.company_website, contact_name: @airconditioner.contact_name, zipcode: @airconditioner.zipcode }
    assert_redirected_to airconditioner_path(assigns(:airconditioner))
  end

  test "should destroy airconditioner" do
    assert_difference('Airconditioner.count', -1) do
      delete :destroy, id: @airconditioner
    end

    assert_redirected_to airconditioners_path
  end
end
