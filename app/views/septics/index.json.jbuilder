json.array!(@septics) do |septic|
  json.extract! septic, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url septic_url(septic, format: :json)
end
