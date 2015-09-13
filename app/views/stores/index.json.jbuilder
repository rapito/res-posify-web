json.array!(@stores) do |store|
  json.extract! store, :id, :name, :desctiption, :phone, :address, :tax_rate, :website
  json.url store_url(store, format: :json)
end
