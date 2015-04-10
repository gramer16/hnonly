json.array!(@insulations) do |insulation|
  json.extract! insulation, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url insulation_url(insulation, format: :json)
end
