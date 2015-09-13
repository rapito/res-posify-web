json.array!(@orders) do |order|
  json.extract! order, :id, :discount, :brute, :net, :payed, :payed_at, :customer_id, :waiter_id
  json.url order_url(order, format: :json)
end
