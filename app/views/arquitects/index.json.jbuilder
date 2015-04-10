json.array!(@arquitects) do |arquitect|
  json.extract! arquitect, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url arquitect_url(arquitect, format: :json)
end
