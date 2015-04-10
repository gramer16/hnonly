json.array!(@taxspecialists) do |taxspecialist|
  json.extract! taxspecialist, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url taxspecialist_url(taxspecialist, format: :json)
end
