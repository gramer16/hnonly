json.array!(@lawyers) do |lawyer|
  json.extract! lawyer, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url lawyer_url(lawyer, format: :json)
end
