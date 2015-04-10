json.array!(@floorings) do |flooring|
  json.extract! flooring, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url flooring_url(flooring, format: :json)
end
