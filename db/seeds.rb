# must be a quicker way
Listing.all.each &:delete
Restaurant.all.each &:delete
List.all.each &:delete
User.all.each &:delete

# ------------------------------------------------------------------


admin = User.create!(username: 'admin', password: 'admin123')

rest_names = {
  'bernal faves': ['precita park cafe', 'hillside supper club', 'pizzahacker'],
  'bahn mi near a/A': ['saigon sandwich', 'sing sing'],
  'taco trucks': ['El Gallo Giro', 'El Tonayense'],
}

rest_names.each do |group, names|
  lst = admin.lists.create!(title: group)

  names.each do |name|
    rest = Restaurant.create!(name: name, hood: group, yelp_id: 'nope', city: 'SF', state: 'CA')
    lst.new_listing_by_author(restaurant: rest).save
  end
end
