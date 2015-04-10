require 'test_helper'

class PlumbingsControllerTest < ActionController::TestCase
  setup do
    @plumbing = plumbings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plumbings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create plumbing" do
    assert_difference('Plumbing.count') do
      post :create, plumbing: { address: @plumbing.address, city: @plumbing.city, company_description: @plumbing.company_description, company_name: @plumbing.company_name, company_phone: @plumbing.company_phone, company_website: @plumbing.company_website, contact_name: @plumbing.contact_name, zipcode: @plumbing.zipcode }
    end

    assert_redirected_to plumbing_path(assigns(:plumbing))
  end

  test "should show plumbing" do
    get :show, id: @plumbing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @plumbing
    assert_response :success
  end

  test "should update plumbing" do
    patch :update, id: @plumbing, plumbing: { address: @plumbing.address, city: @plumbing.city, company_description: @plumbing.company_description, company_name: @plumbing.company_name, company_phone: @plumbing.company_phone, company_website: @plumbing.company_website, contact_name: @plumbing.contact_name, zipcode: @plumbing.zipcode }
    assert_redirected_to plumbing_path(assigns(:plumbing))
  end

  test "should destroy plumbing" do
    assert_difference('Plumbing.count', -1) do
      delete :destroy, id: @plumbing
    end

    assert_redirected_to plumbings_path
  end
end
