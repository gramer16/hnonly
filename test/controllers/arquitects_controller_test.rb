require 'test_helper'

class ArquitectsControllerTest < ActionController::TestCase
  setup do
    @arquitect = arquitects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arquitects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arquitect" do
    assert_difference('Arquitect.count') do
      post :create, arquitect: { address: @arquitect.address, city: @arquitect.city, company_description: @arquitect.company_description, company_name: @arquitect.company_name, company_phone: @arquitect.company_phone, company_website: @arquitect.company_website, contact_name: @arquitect.contact_name, zipcode: @arquitect.zipcode }
    end

    assert_redirected_to arquitect_path(assigns(:arquitect))
  end

  test "should show arquitect" do
    get :show, id: @arquitect
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arquitect
    assert_response :success
  end

  test "should update arquitect" do
    patch :update, id: @arquitect, arquitect: { address: @arquitect.address, city: @arquitect.city, company_description: @arquitect.company_description, company_name: @arquitect.company_name, company_phone: @arquitect.company_phone, company_website: @arquitect.company_website, contact_name: @arquitect.contact_name, zipcode: @arquitect.zipcode }
    assert_redirected_to arquitect_path(assigns(:arquitect))
  end

  test "should destroy arquitect" do
    assert_difference('Arquitect.count', -1) do
      delete :destroy, id: @arquitect
    end

    assert_redirected_to arquitects_path
  end
end
