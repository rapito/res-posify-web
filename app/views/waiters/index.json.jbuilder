json.array!(@waiters) do |waiter|
  json.extract! waiter, :id, :name, :lastname
  json.url waiter_url(waiter, format: :json)
end
