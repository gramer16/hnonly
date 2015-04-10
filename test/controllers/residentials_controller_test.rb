require 'test_helper'

class ResidentialsControllerTest < ActionController::TestCase
  setup do
    @residential = residentials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:residentials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create residential" do
    assert_difference('Residential.count') do
      post :create, residential: { action: @residential.action, address: @residential.address, area_tennis: @residential.area_tennis, bedrooms: @residential.bedrooms, city: @residential.city, construction_type: @residential.construction_type, elevator: @residential.elevator, energy_features: @residential.energy_features, florida_mlsarea: @residential.florida_mlsarea, foreclosure: @residential.foreclosure, full_bathrooms: @residential.full_bathrooms, garage: @residential.garage, golf_course: @residential.golf_course, green_certification: @residential.green_certification, half_bathrooms: @residential.half_bathrooms, lot_size: @residential.lot_size, mls_number: @residential.mls_number, patio_deck: @residential.patio_deck, price: @residential.price, private_pool: @residential.private_pool, property_type: @residential.property_type, square_feet: @residential.square_feet, status: @residential.status, stories: @residential.stories, water_front: @residential.water_front, water_view: @residential.water_view, wheelchair: @residential.wheelchair, year_built: @residential.year_built, zip_code: @residential.zip_code }
    end

    assert_redirected_to residential_path(assigns(:residential))
  end

  test "should show residential" do
    get :show, id: @residential
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @residential
    assert_response :success
  end

  test "should update residential" do
    patch :update, id: @residential, residential: { action: @residential.action, address: @residential.address, area_tennis: @residential.area_tennis, bedrooms: @residential.bedrooms, city: @residential.city, construction_type: @residential.construction_type, elevator: @residential.elevator, energy_features: @residential.energy_features, florida_mlsarea: @residential.florida_mlsarea, foreclosure: @residential.foreclosure, full_bathrooms: @residential.full_bathrooms, garage: @residential.garage, golf_course: @residential.golf_course, green_certification: @residential.green_certification, half_bathrooms: @residential.half_bathrooms, lot_size: @residential.lot_size, mls_number: @residential.mls_number, patio_deck: @residential.patio_deck, price: @residential.price, private_pool: @residential.private_pool, property_type: @residential.property_type, square_feet: @residential.square_feet, status: @residential.status, stories: @residential.stories, water_front: @residential.water_front, water_view: @residential.water_view, wheelchair: @residential.wheelchair, year_built: @residential.year_built, zip_code: @residential.zip_code }
    assert_redirected_to residential_path(assigns(:residential))
  end

  test "should destroy residential" do
    assert_difference('Residential.count', -1) do
      delete :destroy, id: @residential
    end

    assert_redirected_to residentials_path
  end
end
