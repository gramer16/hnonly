json.array!(@hardmoneys) do |hardmoney|
  json.extract! hardmoney, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url hardmoney_url(hardmoney, format: :json)
end
