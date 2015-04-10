require 'test_helper'

class FramingsControllerTest < ActionController::TestCase
  setup do
    @framing = framings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:framings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create framing" do
    assert_difference('Framing.count') do
      post :create, framing: { address: @framing.address, city: @framing.city, company_description: @framing.company_description, company_name: @framing.company_name, company_phone: @framing.company_phone, company_website: @framing.company_website, contact_name: @framing.contact_name, zipcode: @framing.zipcode }
    end

    assert_redirected_to framing_path(assigns(:framing))
  end

  test "should show framing" do
    get :show, id: @framing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @framing
    assert_response :success
  end

  test "should update framing" do
    patch :update, id: @framing, framing: { address: @framing.address, city: @framing.city, company_description: @framing.company_description, company_name: @framing.company_name, company_phone: @framing.company_phone, company_website: @framing.company_website, contact_name: @framing.contact_name, zipcode: @framing.zipcode }
    assert_redirected_to framing_path(assigns(:framing))
  end

  test "should destroy framing" do
    assert_difference('Framing.count', -1) do
      delete :destroy, id: @framing
    end

    assert_redirected_to framings_path
  end
end
