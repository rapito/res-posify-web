json.array!(@stores) do |store|
  json.extract! store, :id, :name, :description, :phone, :address, :tax_rate, :website
  json.url store_url(store, format: :json)
end
