json.array!(@airconditioners) do |airconditioner|
  json.extract! airconditioner, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url airconditioner_url(airconditioner, format: :json)
end
