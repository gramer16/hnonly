json.array!(@poolrepairs) do |poolrepair|
  json.extract! poolrepair, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url poolrepair_url(poolrepair, format: :json)
end
