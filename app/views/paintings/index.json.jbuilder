json.array!(@paintings) do |painting|
  json.extract! painting, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url painting_url(painting, format: :json)
end
