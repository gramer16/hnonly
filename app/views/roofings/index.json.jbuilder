json.array!(@roofings) do |roofing|
  json.extract! roofing, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url roofing_url(roofing, format: :json)
end
