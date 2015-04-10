json.array!(@privatefirms) do |privatefirm|
  json.extract! privatefirm, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url privatefirm_url(privatefirm, format: :json)
end
