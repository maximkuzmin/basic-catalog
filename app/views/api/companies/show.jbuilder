json.(@company, *Company.json_fields)
json.active_goods do
  json.array! @company.active_goods do |good|
    json.(good, *Good.json_fields)
  end
end
