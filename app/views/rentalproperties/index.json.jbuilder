json.array!(@rentalproperties) do |rentalproperty|
  json.extract! rentalproperty, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url rentalproperty_url(rentalproperty, format: :json)
end
