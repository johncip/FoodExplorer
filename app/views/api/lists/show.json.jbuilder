json.model do
  json.partial! partial: 'index_item', locals: { list: @list }
end

json.restaurants do
  json.partial! partial: 'api/restaurants/from_listing',
                collection: @listings, as: :listing,
                locals: { dinings: @dinings }
end
