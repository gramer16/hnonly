json.array!(@asphalts) do |asphalt|
  json.extract! asphalt, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url asphalt_url(asphalt, format: :json)
end
