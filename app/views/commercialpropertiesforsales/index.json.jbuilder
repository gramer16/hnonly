json.array!(@commercialpropertiesforsales) do |commercialpropertiesforsale|
  json.extract! commercialpropertiesforsale, :id, :mls_number, :property_type, :action, :address, :zipcode, :city, :price, :realestatecompany, :officephone, :companywebsite, :listingagent, :emailagent, :agentphone, :assetclass, :totalbuildingSF, :totalunits, :cap_rate, :floorsnumber, :construction_type, :property_description, :parking_total, :elevators, :individual_suiteSQF, :year_completed, :lotsqft
  json.url commercialpropertiesforsale_url(commercialpropertiesforsale, format: :json)
end
