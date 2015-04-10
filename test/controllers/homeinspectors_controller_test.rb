require 'test_helper'

class HomeinspectorsControllerTest < ActionController::TestCase
  setup do
    @homeinspector = homeinspectors(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homeinspectors)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homeinspector" do
    assert_difference('Homeinspector.count') do
      post :create, homeinspector: { address: @homeinspector.address, city: @homeinspector.city, company_description: @homeinspector.company_description, company_name: @homeinspector.company_name, company_phone: @homeinspector.company_phone, company_website: @homeinspector.company_website, contact_name: @homeinspector.contact_name, zipcode: @homeinspector.zipcode }
    end

    assert_redirected_to homeinspector_path(assigns(:homeinspector))
  end

  test "should show homeinspector" do
    get :show, id: @homeinspector
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homeinspector
    assert_response :success
  end

  test "should update homeinspector" do
    patch :update, id: @homeinspector, homeinspector: { address: @homeinspector.address, city: @homeinspector.city, company_description: @homeinspector.company_description, company_name: @homeinspector.company_name, company_phone: @homeinspector.company_phone, company_website: @homeinspector.company_website, contact_name: @homeinspector.contact_name, zipcode: @homeinspector.zipcode }
    assert_redirected_to homeinspector_path(assigns(:homeinspector))
  end

  test "should destroy homeinspector" do
    assert_difference('Homeinspector.count', -1) do
      delete :destroy, id: @homeinspector
    end

    assert_redirected_to homeinspectors_path
  end
end
