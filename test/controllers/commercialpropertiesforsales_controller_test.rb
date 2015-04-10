require 'test_helper'

class CommercialpropertiesforsalesControllerTest < ActionController::TestCase
  setup do
    @commercialpropertiesforsale = commercialpropertiesforsales(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commercialpropertiesforsales)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commercialpropertiesforsale" do
    assert_difference('Commercialpropertiesforsale.count') do
      post :create, commercialpropertiesforsale: { action: @commercialpropertiesforsale.action, address: @commercialpropertiesforsale.address, agentphone: @commercialpropertiesforsale.agentphone, assetclass: @commercialpropertiesforsale.assetclass, cap_rate: @commercialpropertiesforsale.cap_rate, city: @commercialpropertiesforsale.city, companywebsite: @commercialpropertiesforsale.companywebsite, construction_type: @commercialpropertiesforsale.construction_type, elevators: @commercialpropertiesforsale.elevators, emailagent: @commercialpropertiesforsale.emailagent, floorsnumber: @commercialpropertiesforsale.floorsnumber, individual_suiteSQF: @commercialpropertiesforsale.individual_suiteSQF, listingagent: @commercialpropertiesforsale.listingagent, lotsqft: @commercialpropertiesforsale.lotsqft, mls_number: @commercialpropertiesforsale.mls_number, officephone: @commercialpropertiesforsale.officephone, parking_total: @commercialpropertiesforsale.parking_total, price: @commercialpropertiesforsale.price, property_description: @commercialpropertiesforsale.property_description, property_type: @commercialpropertiesforsale.property_type, realestatecompany: @commercialpropertiesforsale.realestatecompany, totalbuildingSF: @commercialpropertiesforsale.totalbuildingSF, totalunits: @commercialpropertiesforsale.totalunits, year_completed: @commercialpropertiesforsale.year_completed, zipcode: @commercialpropertiesforsale.zipcode }
    end

    assert_redirected_to commercialpropertiesforsale_path(assigns(:commercialpropertiesforsale))
  end

  test "should show commercialpropertiesforsale" do
    get :show, id: @commercialpropertiesforsale
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commercialpropertiesforsale
    assert_response :success
  end

  test "should update commercialpropertiesforsale" do
    patch :update, id: @commercialpropertiesforsale, commercialpropertiesforsale: { action: @commercialpropertiesforsale.action, address: @commercialpropertiesforsale.address, agentphone: @commercialpropertiesforsale.agentphone, assetclass: @commercialpropertiesforsale.assetclass, cap_rate: @commercialpropertiesforsale.cap_rate, city: @commercialpropertiesforsale.city, companywebsite: @commercialpropertiesforsale.companywebsite, construction_type: @commercialpropertiesforsale.construction_type, elevators: @commercialpropertiesforsale.elevators, emailagent: @commercialpropertiesforsale.emailagent, floorsnumber: @commercialpropertiesforsale.floorsnumber, individual_suiteSQF: @commercialpropertiesforsale.individual_suiteSQF, listingagent: @commercialpropertiesforsale.listingagent, lotsqft: @commercialpropertiesforsale.lotsqft, mls_number: @commercialpropertiesforsale.mls_number, officephone: @commercialpropertiesforsale.officephone, parking_total: @commercialpropertiesforsale.parking_total, price: @commercialpropertiesforsale.price, property_description: @commercialpropertiesforsale.property_description, property_type: @commercialpropertiesforsale.property_type, realestatecompany: @commercialpropertiesforsale.realestatecompany, totalbuildingSF: @commercialpropertiesforsale.totalbuildingSF, totalunits: @commercialpropertiesforsale.totalunits, year_completed: @commercialpropertiesforsale.year_completed, zipcode: @commercialpropertiesforsale.zipcode }
    assert_redirected_to commercialpropertiesforsale_path(assigns(:commercialpropertiesforsale))
  end

  test "should destroy commercialpropertiesforsale" do
    assert_difference('Commercialpropertiesforsale.count', -1) do
      delete :destroy, id: @commercialpropertiesforsale
    end

    assert_redirected_to commercialpropertiesforsales_path
  end
end
