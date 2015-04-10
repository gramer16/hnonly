json.array!(@accountants) do |accountant|
  json.extract! accountant, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url accountant_url(accountant, format: :json)
end
