json.array!(@landsurveyors) do |landsurveyor|
  json.extract! landsurveyor, :id, :company_name, :company_description, :address, :city, :zipcode, :contact_name, :company_website, :company_phone
  json.url landsurveyor_url(landsurveyor, format: :json)
end
