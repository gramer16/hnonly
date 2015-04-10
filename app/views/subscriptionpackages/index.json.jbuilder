json.array!(@subscriptionpackages) do |subscriptionpackage|
  json.extract! subscriptionpackage, :id, :package_title, :package_name, :package_description, :price, :features_include
  json.url subscriptionpackage_url(subscriptionpackage, format: :json)
end
