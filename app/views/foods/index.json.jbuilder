json.array!(@foods) do |food|
  json.extract! food, :id, :name, :price, :description, :category_id
  json.url food_url(food, format: :json)
end
