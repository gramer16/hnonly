require 'test_helper'

class CommercialSalesControllerTest < ActionController::TestCase
  setup do
    @commercial_sale = commercial_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercial_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercial_sale" do
    assert_difference('CommercialSale.count') do
      post :create, commercial_sale: { action: @commercial_sale.action, address: @commercial_sale.address, agentphone: @commercial_sale.agentphone, assetclass: @commercial_sale.assetclass, cap_rate: @commercial_sale.cap_rate, city: @commercial_sale.city, companywebsite: @commercial_sale.companywebsite, construction_type: @commercial_sale.construction_type, elevators: @commercial_sale.elevators, emailagent: @commercial_sale.emailagent, floorsnumber: @commercial_sale.floorsnumber, id: @commercial_sale.id, individual_suiteSQF: @commercial_sale.individual_suiteSQF, listingagent: @commercial_sale.listingagent, mls_number: @commercial_sale.mls_number, officephone: @commercial_sale.officephone, parking_total: @commercial_sale.parking_total, price: @commercial_sale.price, property_description: @commercial_sale.property_description, property_type: @commercial_sale.property_type, realestatecompany: @commercial_sale.realestatecompany, totalbuildingSF: @commercial_sale.totalbuildingSF, totalunits: @commercial_sale.totalunits, year_completed: @commercial_sale.year_completed, zipcode: @commercial_sale.zipcode }
    end

    assert_redirected_to commercial_sale_path(assigns(:commercial_sale))
  end

  test "should show commercial_sale" do
    get :show, id: @commercial_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercial_sale
    assert_response :success
  end

  test "should update commercial_sale" do
    patch :update, id: @commercial_sale, commercial_sale: { action: @commercial_sale.action, address: @commercial_sale.address, agentphone: @commercial_sale.agentphone, assetclass: @commercial_sale.assetclass, cap_rate: @commercial_sale.cap_rate, city: @commercial_sale.city, companywebsite: @commercial_sale.companywebsite, construction_type: @commercial_sale.construction_type, elevators: @commercial_sale.elevators, emailagent: @commercial_sale.emailagent, floorsnumber: @commercial_sale.floorsnumber, id: @commercial_sale.id, individual_suiteSQF: @commercial_sale.individual_suiteSQF, listingagent: @commercial_sale.listingagent, mls_number: @commercial_sale.mls_number, officephone: @commercial_sale.officephone, parking_total: @commercial_sale.parking_total, price: @commercial_sale.price, property_description: @commercial_sale.property_description, property_type: @commercial_sale.property_type, realestatecompany: @commercial_sale.realestatecompany, totalbuildingSF: @commercial_sale.totalbuildingSF, totalunits: @commercial_sale.totalunits, year_completed: @commercial_sale.year_completed, zipcode: @commercial_sale.zipcode }
    assert_redirected_to commercial_sale_path(assigns(:commercial_sale))
  end

  test "should destroy commercial_sale" do
    assert_difference('CommercialSale.count', -1) do
      delete :destroy, id: @commercial_sale
    end

    assert_redirected_to commercial_sales_path
  end
end
