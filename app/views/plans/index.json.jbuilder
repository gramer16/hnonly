json.array!(@plans) do |plan|
  json.extract! plan, :id, :name, :price, :interval
  json.url plan_url(plan, format: :json)
end
