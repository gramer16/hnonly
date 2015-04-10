require 'test_helper'

class TermiteinspectorsControllerTest < ActionController::TestCase
  setup do
    @termiteinspector = termiteinspectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:termiteinspectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create termiteinspector" do
    assert_difference('Termiteinspector.count') do
      post :create, termiteinspector: { address: @termiteinspector.address, city: @termiteinspector.city, company_description: @termiteinspector.company_description, company_name: @termiteinspector.company_name, company_phone: @termiteinspector.company_phone, company_website: @termiteinspector.company_website, contact_name: @termiteinspector.contact_name, email: @termiteinspector.email, zipcode: @termiteinspector.zipcode }
    end

    assert_redirected_to termiteinspector_path(assigns(:termiteinspector))
  end

  test "should show termiteinspector" do
    get :show, id: @termiteinspector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @termiteinspector
    assert_response :success
  end

  test "should update termiteinspector" do
    patch :update, id: @termiteinspector, termiteinspector: { address: @termiteinspector.address, city: @termiteinspector.city, company_description: @termiteinspector.company_description, company_name: @termiteinspector.company_name, company_phone: @termiteinspector.company_phone, company_website: @termiteinspector.company_website, contact_name: @termiteinspector.contact_name, email: @termiteinspector.email, zipcode: @termiteinspector.zipcode }
    assert_redirected_to termiteinspector_path(assigns(:termiteinspector))
  end

  test "should destroy termiteinspector" do
    assert_difference('Termiteinspector.count', -1) do
      delete :destroy, id: @termiteinspector
    end

    assert_redirected_to termiteinspectors_path
  end
end
