json.array!(@orders) do |order|
  json.extract! order, :id, :discount, :brute, :net, :payed, :payed_at, :customer, :waiter
  json.url order_url(order, format: :json)
end
