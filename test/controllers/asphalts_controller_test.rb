require 'test_helper'

class AsphaltsControllerTest < ActionController::TestCase
  setup do
    @asphalt = asphalts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asphalts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asphalt" do
    assert_difference('Asphalt.count') do
      post :create, asphalt: { address: @asphalt.address, city: @asphalt.city, company_description: @asphalt.company_description, company_name: @asphalt.company_name, company_phone: @asphalt.company_phone, company_website: @asphalt.company_website, contact_name: @asphalt.contact_name, zipcode: @asphalt.zipcode }
    end

    assert_redirected_to asphalt_path(assigns(:asphalt))
  end

  test "should show asphalt" do
    get :show, id: @asphalt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asphalt
    assert_response :success
  end

  test "should update asphalt" do
    patch :update, id: @asphalt, asphalt: { address: @asphalt.address, city: @asphalt.city, company_description: @asphalt.company_description, company_name: @asphalt.company_name, company_phone: @asphalt.company_phone, company_website: @asphalt.company_website, contact_name: @asphalt.contact_name, zipcode: @asphalt.zipcode }
    assert_redirected_to asphalt_path(assigns(:asphalt))
  end

  test "should destroy asphalt" do
    assert_difference('Asphalt.count', -1) do
      delete :destroy, id: @asphalt
    end

    assert_redirected_to asphalts_path
  end
end
