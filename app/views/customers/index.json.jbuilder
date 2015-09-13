json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :lastname, :email, :birthday, :phone
  json.url customer_url(customer, format: :json)
end
