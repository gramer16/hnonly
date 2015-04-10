json.array!(@real_estatefirms) do |real_estatefirm|
  json.extract! real_estatefirm, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url real_estatefirm_url(real_estatefirm, format: :json)
end
