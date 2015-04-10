require 'test_helper'

class SolarscreensControllerTest < ActionController::TestCase
  setup do
    @solarscreen = solarscreens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solarscreens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solarscreen" do
    assert_difference('Solarscreen.count') do
      post :create, solarscreen: { address: @solarscreen.address, city: @solarscreen.city, company_description: @solarscreen.company_description, company_name: @solarscreen.company_name, company_phone: @solarscreen.company_phone, company_website: @solarscreen.company_website, contact_name: @solarscreen.contact_name, email: @solarscreen.email, zipcode: @solarscreen.zipcode }
    end

    assert_redirected_to solarscreen_path(assigns(:solarscreen))
  end

  test "should show solarscreen" do
    get :show, id: @solarscreen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solarscreen
    assert_response :success
  end

  test "should update solarscreen" do
    patch :update, id: @solarscreen, solarscreen: { address: @solarscreen.address, city: @solarscreen.city, company_description: @solarscreen.company_description, company_name: @solarscreen.company_name, company_phone: @solarscreen.company_phone, company_website: @solarscreen.company_website, contact_name: @solarscreen.contact_name, email: @solarscreen.email, zipcode: @solarscreen.zipcode }
    assert_redirected_to solarscreen_path(assigns(:solarscreen))
  end

  test "should destroy solarscreen" do
    assert_difference('Solarscreen.count', -1) do
      delete :destroy, id: @solarscreen
    end

    assert_redirected_to solarscreens_path
  end
end
