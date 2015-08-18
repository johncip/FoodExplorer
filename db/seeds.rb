admin = User.create!(username: 'admin', password: 'admin123')

rest_ids = {
  'Red Hill Favorites': [
    'precita-park-cafe-san-francisco',
    'hillside-supper-club-san-francisco-2',
    'pizzahacker-san-francisco-4',
    'lotus-garden-vietnamese-cuisine-san-francisco',
    'little-bee-baking-san-francisco',
    'progressive-grounds-san-francisco',
    'sweet-basil-thai-cuisine-san-francisco-2',
    'harvest-hills-market-san-francisco',
  ],
  'Bahn Mi Near a/A': [
    'saigon-sandwich-san-francisco',
    'sing-sing-sandwich-shop-san-francisco',
    'balo-vietnamese-eatery-san-francisco',
    'lees-sandwiches-san-francisco',
  ],
  'Cool Food Trucks': [
    'the-chairman-truck-san-francisco',
    'waffle-mania-truck-san-francisco',
    'voodoo-van-san-francisco',
    'el-sur-san-francisco',
    'curry-up-now-san-francisco-6',
    'el-porte%C3%B1o-empanadas-san-francisco-4',
    'me-so-hungry-san-francisco',
  ],
  'Bib Gourmand 2015': [
    'bar-tartine-san-francisco',
    'chino-san-francisco-3',
    'delfina-san-francisco',
    'domo-san-francisco',
    'dosa-on-fillmore-san-francisco-3',
    'dosa-on-valencia-san-francisco',
    'flour-water-san-francisco',
    'm-y-china-san-francisco-2',
    'mamacita-san-francisco',
    'perbacco-san-francisco',
    'rich-table-san-francisco',
    'starbelly-san-francisco',
    'yank-sing-san-francisco-2',
    'yuzuki-japanese-eatery-san-francisco',
  ],
  'Good Coffee': [
    'blue-bottle-coffee-co-san-francisco-7',
    'blue-bottle-coffee-san-francisco-9',
    'ritual-coffee-roasters-san-francisco-5',
    'four-barrel-coffee-san-francisco',
  ],
  'Ice Cream': [
    'humphry-slocombe-ice-cream-san-francisco',
    'easy-breezy-frozen-yogurt-san-francisco',
    'mitchells-ice-cream-san-francisco',
    'bi-rite-creamery-san-francisco',
    'miyako-old-fashioned-ice-cream-san-francisco',
    'smitten-ice-cream-san-francisco-3',
    'st-francis-fountain-san-francisco',
  ]
}

rest_ids.each do |group, yelp_ids|
  lst = admin.lists.create!(title: group)

  yelp_ids.each do |yelp_id|
    rest = Restaurant.create_by_yelp_id!(yelp_id)
    lst.new_listing_by_author(restaurant: rest).save
  end
end

List.find_by_title!('Red Hill Favorites').update!(favorite: true)
List.find_by_title!('Ice Cream').update!(favorite: true)
