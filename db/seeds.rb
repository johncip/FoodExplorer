admin = User.create!(username: 'admin', password: 'admin123')

rest_ids = {
  'Red Hill Favorites': [
    'precita-park-cafe-san-francisco',
    'hillside-supper-club-san-francisco-2',
    'pizzahacker-san-francisco-4'
  ],
  'Bahn Mi Near a/A': [
    'saigon-sandwich-san-francisco',
    'sing-sing-sandwich-shop-san-francisco',
    'balo-vietnamese-eatery-san-francisco',
    'lees-sandwiches-san-francisco'
  ],
  'Best SF Taco Trucks': [
    'el-tonayense-taco-truck-san-francisco-8',
    'el-gallo-giro-taco-truck-san-francisco-2',
    'los-compadres-taco-truck-san-francisco-2',
    'el-tonayense-taco-truck-san-francisco-4',
    'el-norteno-taco-truck-san-francisco'
  ],
  'Bib Gourmand 2015': [
    'bar-tartine-san-francisco',
    'chino-san-francisco-3',
    'delfina-san-francisco',
    'dosa-on-fillmore-san-francisco-3',
    'dosa-on-valencia-san-francisco',
    'flour-water-san-francisco',
    'perbacco-san-francisco',
    'm-y-china-san-francisco-2',
    'yank-sing-san-francisco-2'
  ]
}

rest_ids.each do |group, yelp_ids|
  lst = admin.lists.create!(title: group)

  yelp_ids.each do |yelp_id|
    rest = Restaurant.create_by_yelp_id!(yelp_id)
    lst.new_listing_by_author(restaurant: rest).save
  end
end

List.first.update!(favorite: true)
