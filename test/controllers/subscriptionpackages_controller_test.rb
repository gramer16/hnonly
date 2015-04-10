require 'test_helper'

class SubscriptionpackagesControllerTest < ActionController::TestCase
  setup do
    @subscriptionpackage = subscriptionpackages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscriptionpackages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscriptionpackage" do
    assert_difference('Subscriptionpackage.count') do
      post :create, subscriptionpackage: { features_include: @subscriptionpackage.features_include, package_description: @subscriptionpackage.package_description, package_name: @subscriptionpackage.package_name, package_title: @subscriptionpackage.package_title, price: @subscriptionpackage.price }
    end

    assert_redirected_to subscriptionpackage_path(assigns(:subscriptionpackage))
  end

  test "should show subscriptionpackage" do
    get :show, id: @subscriptionpackage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subscriptionpackage
    assert_response :success
  end

  test "should update subscriptionpackage" do
    patch :update, id: @subscriptionpackage, subscriptionpackage: { features_include: @subscriptionpackage.features_include, package_description: @subscriptionpackage.package_description, package_name: @subscriptionpackage.package_name, package_title: @subscriptionpackage.package_title, price: @subscriptionpackage.price }
    assert_redirected_to subscriptionpackage_path(assigns(:subscriptionpackage))
  end

  test "should destroy subscriptionpackage" do
    assert_difference('Subscriptionpackage.count', -1) do
      delete :destroy, id: @subscriptionpackage
    end

    assert_redirected_to subscriptionpackages_path
  end
end
