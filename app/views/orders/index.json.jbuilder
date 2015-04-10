json.array!(@orders) do |order|
  json.extract! order, :id, :first_name, :last_name, :company_name, :street_address, :city, :state, :zipcode, :phone_number, :email, :company_service
  json.url order_url(order, format: :json)
end
