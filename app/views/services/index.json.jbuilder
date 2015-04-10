json.array!(@services) do |service|
  json.extract! service, :id, :company_name, :service_type, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url service_url(service, format: :json)
end
