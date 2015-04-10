json.array!(@poolcleaners) do |poolcleaner|
  json.extract! poolcleaner, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url poolcleaner_url(poolcleaner, format: :json)
end
