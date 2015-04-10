json.array!(@privatebanks) do |privatebank|
  json.extract! privatebank, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url privatebank_url(privatebank, format: :json)
end
