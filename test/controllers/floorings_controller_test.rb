require 'test_helper'

class FlooringsControllerTest < ActionController::TestCase
  setup do
    @flooring = floorings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:floorings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create flooring" do
    assert_difference('Flooring.count') do
      post :create, flooring: { address: @flooring.address, city: @flooring.city, company_description: @flooring.company_description, company_name: @flooring.company_name, company_phone: @flooring.company_phone, company_website: @flooring.company_website, contact_name: @flooring.contact_name, zipcode: @flooring.zipcode }
    end

    assert_redirected_to flooring_path(assigns(:flooring))
  end

  test "should show flooring" do
    get :show, id: @flooring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @flooring
    assert_response :success
  end

  test "should update flooring" do
    patch :update, id: @flooring, flooring: { address: @flooring.address, city: @flooring.city, company_description: @flooring.company_description, company_name: @flooring.company_name, company_phone: @flooring.company_phone, company_website: @flooring.company_website, contact_name: @flooring.contact_name, zipcode: @flooring.zipcode }
    assert_redirected_to flooring_path(assigns(:flooring))
  end

  test "should destroy flooring" do
    assert_difference('Flooring.count', -1) do
      delete :destroy, id: @flooring
    end

    assert_redirected_to floorings_path
  end
end
