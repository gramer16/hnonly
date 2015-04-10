json.array!(@titlecompanies) do |titlecompany|
  json.extract! titlecompany, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url titlecompany_url(titlecompany, format: :json)
end
