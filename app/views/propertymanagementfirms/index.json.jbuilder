json.array!(@propertymanagementfirms) do |propertymanagementfirm|
  json.extract! propertymanagementfirm, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url propertymanagementfirm_url(propertymanagementfirm, format: :json)
end
