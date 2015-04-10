require 'test_helper'

class DrywallsControllerTest < ActionController::TestCase
  setup do
    @drywall = drywalls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drywalls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drywall" do
    assert_difference('Drywall.count') do
      post :create, drywall: { address: @drywall.address, city: @drywall.city, company_description: @drywall.company_description, company_name: @drywall.company_name, company_phone: @drywall.company_phone, company_website: @drywall.company_website, contact_name: @drywall.contact_name, zipcode: @drywall.zipcode }
    end

    assert_redirected_to drywall_path(assigns(:drywall))
  end

  test "should show drywall" do
    get :show, id: @drywall
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drywall
    assert_response :success
  end

  test "should update drywall" do
    patch :update, id: @drywall, drywall: { address: @drywall.address, city: @drywall.city, company_description: @drywall.company_description, company_name: @drywall.company_name, company_phone: @drywall.company_phone, company_website: @drywall.company_website, contact_name: @drywall.contact_name, zipcode: @drywall.zipcode }
    assert_redirected_to drywall_path(assigns(:drywall))
  end

  test "should destroy drywall" do
    assert_difference('Drywall.count', -1) do
      delete :destroy, id: @drywall
    end

    assert_redirected_to drywalls_path
  end
end
