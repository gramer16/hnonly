json.array!(@customcabinets) do |customcabinet|
  json.extract! customcabinet, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url customcabinet_url(customcabinet, format: :json)
end
