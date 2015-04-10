json.array!(@landscapings) do |landscaping|
  json.extract! landscaping, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url landscaping_url(landscaping, format: :json)
end
