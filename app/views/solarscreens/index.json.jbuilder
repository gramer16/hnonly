json.array!(@solarscreens) do |solarscreen|
  json.extract! solarscreen, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url solarscreen_url(solarscreen, format: :json)
end
