json.array!(@interiordesigners) do |interiordesigner|
  json.extract! interiordesigner, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url interiordesigner_url(interiordesigner, format: :json)
end
