json.array!(@homeinspectors) do |homeinspector|
  json.extract! homeinspector, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url homeinspector_url(homeinspector, format: :json)
end
