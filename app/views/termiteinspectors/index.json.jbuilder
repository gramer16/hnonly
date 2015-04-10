json.array!(@termiteinspectors) do |termiteinspector|
  json.extract! termiteinspector, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url termiteinspector_url(termiteinspector, format: :json)
end
