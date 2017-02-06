json.(@good, *Good.json_fields)
json.company do
  json.(@good.company, *Company.json_fields)
end
