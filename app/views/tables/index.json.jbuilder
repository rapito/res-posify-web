json.array!(@tables) do |table|
  json.extract! table, :id, :name, :capacity, :indoor
  json.url table_url(table, format: :json)
end
