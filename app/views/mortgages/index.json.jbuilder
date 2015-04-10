json.array!(@mortgages) do |mortgage|
  json.extract! mortgage, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url mortgage_url(mortgage, format: :json)
end
