json.array!(@movingcompanies) do |movingcompany|
  json.extract! movingcompany, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url movingcompany_url(movingcompany, format: :json)
end
