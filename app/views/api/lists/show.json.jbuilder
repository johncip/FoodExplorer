json.model do
  json.partial! partial: 'index_item', locals: { list: @list }
end

json.restaurants do
  json.partial! partial: 'api/restaurants/index_item', collection: @list.restaurants, as: :restaurant
end
