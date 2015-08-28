# rubocop:disable all

# ----------------------------------------------------------------------------
# Data definitions
# ----------------------------------------------------------------------------

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
    'the-epicurean-trader-san-francisco',
    'coffeeshop-san-francisco',
    'red-hill-station-san-francisco',
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
    'el-porteño-empanadas-san-francisco-4',
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
    'sightglass-coffee-san-francisco',
    'equator-coffees-and-teas-san-francisco',
    'progressive-grounds-san-francisco',
    'coffeeshop-san-francisco',
    'philz-coffee-san-francisco',
  ],
  'Ice Cream': [
    'humphry-slocombe-ice-cream-san-francisco',
    'easy-breezy-frozen-yogurt-san-francisco',
    'mitchells-ice-cream-san-francisco',
    'bi-rite-creamery-san-francisco',
    'miyako-old-fashioned-ice-cream-san-francisco',
    'smitten-ice-cream-san-francisco-3',
    'st-francis-fountain-san-francisco',
    'swensens-ice-cream-san-francisco'
  ]
}

list_descriptions = {
  'Red Hill Favorites': 'The best around Bernal.',
  'Bahn Mi Near a/A': 'App Academy students love their bahn mi. Make sure to start with Saigon.',
  'Cool Food Trucks': 'Meals on wheels.',
  'Bib Gourmand 2015': "The best restaurants that won't break the bank. Maybe.",
  'Good Coffee': 'The best brews around SF.',
  'Ice Cream': "Almost as important as food.",
}

admin = User.create!(username: 'admin', password: 'admin123')

# ----------------------------------------------------------------------------
# Load data
# ----------------------------------------------------------------------------

rest_ids.each do |group, yelp_ids|

  lst = admin.lists.create!(title: group)

  yelp_ids.each do |yelp_id|
    rest = Restaurant.find_or_create_by_yelp_id(yelp_id)
    lst.new_listing_by_author(restaurant: rest).save
  end
end

list_descriptions.each do |title, description|
  List.find_by_title!(title).update!(description: description)
end

# ----------------------------------------------------------------------------
# Set Booleans
# ----------------------------------------------------------------------------

def favorite_list(user, title)
  List.find_by_user_id_and_title(user.id, title).update!(favorite: true)
end

def dine_at(user, yelp_id, favorite, visited)
  Dining.create!(
    diner: user,
    restaurant: Restaurant.find_by_yelp_id(yelp_id),
    favorite: favorite,
    visited: visited
  )
end


favorite_list(admin, 'Red Hill Favorites')
favorite_list(admin, 'Ice Cream')

dine_at(admin, 'easy-breezy-frozen-yogurt-san-francisco', true, true)
dine_at(admin, 'precita-park-cafe-san-francisco', true, true)
dine_at(admin, 'little-bee-baking-san-francisco', false, true)
dine_at(admin, 'progressive-grounds-san-francisco', true, false)
dine_at(admin, 'dosa-on-valencia-san-francisco', false, true)
