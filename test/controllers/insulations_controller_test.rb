require 'test_helper'

class InsulationsControllerTest < ActionController::TestCase
  setup do
    @insulation = insulations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insulations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insulation" do
    assert_difference('Insulation.count') do
      post :create, insulation: { address: @insulation.address, city: @insulation.city, company_description: @insulation.company_description, company_name: @insulation.company_name, company_phone: @insulation.company_phone, company_website: @insulation.company_website, contact_name: @insulation.contact_name, zipcode: @insulation.zipcode }
    end

    assert_redirected_to insulation_path(assigns(:insulation))
  end

  test "should show insulation" do
    get :show, id: @insulation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insulation
    assert_response :success
  end

  test "should update insulation" do
    patch :update, id: @insulation, insulation: { address: @insulation.address, city: @insulation.city, company_description: @insulation.company_description, company_name: @insulation.company_name, company_phone: @insulation.company_phone, company_website: @insulation.company_website, contact_name: @insulation.contact_name, zipcode: @insulation.zipcode }
    assert_redirected_to insulation_path(assigns(:insulation))
  end

  test "should destroy insulation" do
    assert_difference('Insulation.count', -1) do
      delete :destroy, id: @insulation
    end

    assert_redirected_to insulations_path
  end
end
