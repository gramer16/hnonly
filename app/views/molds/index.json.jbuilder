json.array!(@molds) do |mold|
  json.extract! mold, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url mold_url(mold, format: :json)
end
