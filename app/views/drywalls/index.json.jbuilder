json.array!(@drywalls) do |drywall|
  json.extract! drywall, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url drywall_url(drywall, format: :json)
end
