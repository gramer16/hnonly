require 'test_helper'

class CommercialforSalesControllerTest < ActionController::TestCase
  setup do
    @commercialfor_sale = commercialfor_sales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercialfor_sales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercialfor_sale" do
    assert_difference('CommercialforSale.count') do
      post :create, commercialfor_sale: { action: @commercialfor_sale.action, address: @commercialfor_sale.address, agentphone: @commercialfor_sale.agentphone, assetclass: @commercialfor_sale.assetclass, cap_rate: @commercialfor_sale.cap_rate, city: @commercialfor_sale.city, companywebsite: @commercialfor_sale.companywebsite, construction_type: @commercialfor_sale.construction_type, elevators: @commercialfor_sale.elevators, emailagent: @commercialfor_sale.emailagent, floorsnumber: @commercialfor_sale.floorsnumber, id: @commercialfor_sale.id, individual_suiteSQF: @commercialfor_sale.individual_suiteSQF, listingagent: @commercialfor_sale.listingagent, lotSFsize: @commercialfor_sale.lotSFsize, mls_number: @commercialfor_sale.mls_number, officephone: @commercialfor_sale.officephone, parking_total: @commercialfor_sale.parking_total, price: @commercialfor_sale.price, property_description: @commercialfor_sale.property_description, property_type: @commercialfor_sale.property_type, realestatecompany: @commercialfor_sale.realestatecompany, totalbuildingSF: @commercialfor_sale.totalbuildingSF, totalunits: @commercialfor_sale.totalunits, year_completed: @commercialfor_sale.year_completed, zipcode: @commercialfor_sale.zipcode }
    end

    assert_redirected_to commercialfor_sale_path(assigns(:commercialfor_sale))
  end

  test "should show commercialfor_sale" do
    get :show, id: @commercialfor_sale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercialfor_sale
    assert_response :success
  end

  test "should update commercialfor_sale" do
    patch :update, id: @commercialfor_sale, commercialfor_sale: { action: @commercialfor_sale.action, address: @commercialfor_sale.address, agentphone: @commercialfor_sale.agentphone, assetclass: @commercialfor_sale.assetclass, cap_rate: @commercialfor_sale.cap_rate, city: @commercialfor_sale.city, companywebsite: @commercialfor_sale.companywebsite, construction_type: @commercialfor_sale.construction_type, elevators: @commercialfor_sale.elevators, emailagent: @commercialfor_sale.emailagent, floorsnumber: @commercialfor_sale.floorsnumber, id: @commercialfor_sale.id, individual_suiteSQF: @commercialfor_sale.individual_suiteSQF, listingagent: @commercialfor_sale.listingagent, lotSFsize: @commercialfor_sale.lotSFsize, mls_number: @commercialfor_sale.mls_number, officephone: @commercialfor_sale.officephone, parking_total: @commercialfor_sale.parking_total, price: @commercialfor_sale.price, property_description: @commercialfor_sale.property_description, property_type: @commercialfor_sale.property_type, realestatecompany: @commercialfor_sale.realestatecompany, totalbuildingSF: @commercialfor_sale.totalbuildingSF, totalunits: @commercialfor_sale.totalunits, year_completed: @commercialfor_sale.year_completed, zipcode: @commercialfor_sale.zipcode }
    assert_redirected_to commercialfor_sale_path(assigns(:commercialfor_sale))
  end

  test "should destroy commercialfor_sale" do
    assert_difference('CommercialforSale.count', -1) do
      delete :destroy, id: @commercialfor_sale
    end

    assert_redirected_to commercialfor_sales_path
  end
end
