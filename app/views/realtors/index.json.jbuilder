json.array!(@realtors) do |realtor|
  json.extract! realtor, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url realtor_url(realtor, format: :json)
end
