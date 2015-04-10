require 'test_helper'

class CommercialpropertyforsalesControllerTest < ActionController::TestCase
  setup do
    @commercialpropertyforsale = commercialpropertyforsales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercialpropertyforsales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercialpropertyforsale" do
    assert_difference('Commercialpropertyforsale.count') do
      post :create, commercialpropertyforsale: { action: @commercialpropertyforsale.action, address: @commercialpropertyforsale.address, agentphone: @commercialpropertyforsale.agentphone, assetclass: @commercialpropertyforsale.assetclass, cap_rate: @commercialpropertyforsale.cap_rate, city: @commercialpropertyforsale.city, companywebsite: @commercialpropertyforsale.companywebsite, construction_type: @commercialpropertyforsale.construction_type, elevators: @commercialpropertyforsale.elevators, emailagent: @commercialpropertyforsale.emailagent, floorsnumber: @commercialpropertyforsale.floorsnumber, id: @commercialpropertyforsale.id, individual_suiteSQF: @commercialpropertyforsale.individual_suiteSQF, listingagent: @commercialpropertyforsale.listingagent, lotsqft: @commercialpropertyforsale.lotsqft, mls_number: @commercialpropertyforsale.mls_number, officephone: @commercialpropertyforsale.officephone, parking_total: @commercialpropertyforsale.parking_total, price: @commercialpropertyforsale.price, property_description: @commercialpropertyforsale.property_description, property_type: @commercialpropertyforsale.property_type, realestatecompany: @commercialpropertyforsale.realestatecompany, totalbuildingSF: @commercialpropertyforsale.totalbuildingSF, totalunits: @commercialpropertyforsale.totalunits, year_completed: @commercialpropertyforsale.year_completed, zipcode: @commercialpropertyforsale.zipcode }
    end

    assert_redirected_to commercialpropertyforsale_path(assigns(:commercialpropertyforsale))
  end

  test "should show commercialpropertyforsale" do
    get :show, id: @commercialpropertyforsale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercialpropertyforsale
    assert_response :success
  end

  test "should update commercialpropertyforsale" do
    patch :update, id: @commercialpropertyforsale, commercialpropertyforsale: { action: @commercialpropertyforsale.action, address: @commercialpropertyforsale.address, agentphone: @commercialpropertyforsale.agentphone, assetclass: @commercialpropertyforsale.assetclass, cap_rate: @commercialpropertyforsale.cap_rate, city: @commercialpropertyforsale.city, companywebsite: @commercialpropertyforsale.companywebsite, construction_type: @commercialpropertyforsale.construction_type, elevators: @commercialpropertyforsale.elevators, emailagent: @commercialpropertyforsale.emailagent, floorsnumber: @commercialpropertyforsale.floorsnumber, id: @commercialpropertyforsale.id, individual_suiteSQF: @commercialpropertyforsale.individual_suiteSQF, listingagent: @commercialpropertyforsale.listingagent, lotsqft: @commercialpropertyforsale.lotsqft, mls_number: @commercialpropertyforsale.mls_number, officephone: @commercialpropertyforsale.officephone, parking_total: @commercialpropertyforsale.parking_total, price: @commercialpropertyforsale.price, property_description: @commercialpropertyforsale.property_description, property_type: @commercialpropertyforsale.property_type, realestatecompany: @commercialpropertyforsale.realestatecompany, totalbuildingSF: @commercialpropertyforsale.totalbuildingSF, totalunits: @commercialpropertyforsale.totalunits, year_completed: @commercialpropertyforsale.year_completed, zipcode: @commercialpropertyforsale.zipcode }
    assert_redirected_to commercialpropertyforsale_path(assigns(:commercialpropertyforsale))
  end

  test "should destroy commercialpropertyforsale" do
    assert_difference('Commercialpropertyforsale.count', -1) do
      delete :destroy, id: @commercialpropertyforsale
    end

    assert_redirected_to commercialpropertyforsales_path
  end
end
