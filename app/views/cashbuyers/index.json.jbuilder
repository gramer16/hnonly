json.array!(@cashbuyers) do |cashbuyer|
  json.extract! cashbuyer, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone, :email
  json.url cashbuyer_url(cashbuyer, format: :json)
end
