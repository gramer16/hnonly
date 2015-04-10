json.array!(@plumbings) do |plumbing|
  json.extract! plumbing, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url plumbing_url(plumbing, format: :json)
end
