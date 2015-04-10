json.array!(@framings) do |framing|
  json.extract! framing, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url framing_url(framing, format: :json)
end
