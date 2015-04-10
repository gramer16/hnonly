json.array!(@windows) do |window|
  json.extract! window, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url window_url(window, format: :json)
end
