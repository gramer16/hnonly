json.array!(@stagings) do |staging|
  json.extract! staging, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url staging_url(staging, format: :json)
end
