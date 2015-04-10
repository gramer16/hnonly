json.array!(@countertops) do |countertop|
  json.extract! countertop, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url countertop_url(countertop, format: :json)
end
