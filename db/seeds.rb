# must be a quicker way
Listing.all.each &:delete
Restaurant.all.each &:delete
List.all.each &:delete
User.all.each &:delete

# ------------------------------------------------------------------


admin = User.create!(username: 'admin', password: 'admin123')

rest_ids = {
  'bernal faves': [
    'precita-park-cafe-san-francisco',
    'hillside-supper-club-san-francisco-2',
    'pizzahacker-san-francisco-4'
  ],
  'bahn mi near a/A': [
    'saigon-sandwich-san-francisco',
    'sing-sing-sandwich-shop-san-francisco',
    'balo-vietnamese-eatery-san-francisco',
    'lees-sandwiches-san-francisco'
  ],
  'best taco trucks': [
    'el-tonayense-taco-truck-san-francisco-8',
    'el-gallo-giro-taco-truck-san-francisco-2',
    'los-compadres-taco-truck-san-francisco-2',
    'el-tonayense-taco-truck-san-francisco-4',
    'el-norteno-taco-truck-san-francisco'
  ]
}

rest_ids.each do |group, yelp_ids|
  lst = admin.lists.create!(title: group)

  yelp_ids.each do |yelp_id|
    rest = Restaurant.create_by_yelp_id!(yelp_id)
    lst.new_listing_by_author(restaurant: rest).save
  end
end
