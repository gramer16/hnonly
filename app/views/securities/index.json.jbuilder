json.array!(@securities) do |security|
  json.extract! security, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url security_url(security, format: :json)
end
