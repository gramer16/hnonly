require 'test_helper'

class MovingcompaniesControllerTest < ActionController::TestCase
  setup do
    @movingcompany = movingcompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movingcompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movingcompany" do
    assert_difference('Movingcompany.count') do
      post :create, movingcompany: { address: @movingcompany.address, city: @movingcompany.city, company_description: @movingcompany.company_description, company_name: @movingcompany.company_name, company_phone: @movingcompany.company_phone, company_website: @movingcompany.company_website, contact_name: @movingcompany.contact_name, email: @movingcompany.email, zipcode: @movingcompany.zipcode }
    end

    assert_redirected_to movingcompany_path(assigns(:movingcompany))
  end

  test "should show movingcompany" do
    get :show, id: @movingcompany
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @movingcompany
    assert_response :success
  end

  test "should update movingcompany" do
    patch :update, id: @movingcompany, movingcompany: { address: @movingcompany.address, city: @movingcompany.city, company_description: @movingcompany.company_description, company_name: @movingcompany.company_name, company_phone: @movingcompany.company_phone, company_website: @movingcompany.company_website, contact_name: @movingcompany.contact_name, email: @movingcompany.email, zipcode: @movingcompany.zipcode }
    assert_redirected_to movingcompany_path(assigns(:movingcompany))
  end

  test "should destroy movingcompany" do
    assert_difference('Movingcompany.count', -1) do
      delete :destroy, id: @movingcompany
    end

    assert_redirected_to movingcompanies_path
  end
end
