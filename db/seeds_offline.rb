List.create!([
  {user_id: 1, title: "Bernal faves", favorite: false},
  {user_id: 1, title: "Bahn mi near a/A", favorite: false},
  {user_id: 1, title: "Best taco trucks", favorite: false}
])
Listing.create!([
  {restaurant_id: 1, list_id: 1, user_id: 1, favorite: false},
  {restaurant_id: 2, list_id: 1, user_id: 1, favorite: false},
  {restaurant_id: 3, list_id: 1, user_id: 1, favorite: false},
  {restaurant_id: 4, list_id: 2, user_id: 1, favorite: false},
  {restaurant_id: 5, list_id: 2, user_id: 1, favorite: false},
  {restaurant_id: 6, list_id: 2, user_id: 1, favorite: false},
  {restaurant_id: 7, list_id: 2, user_id: 1, favorite: false},
  {restaurant_id: 8, list_id: 3, user_id: 1, favorite: false},
  {restaurant_id: 9, list_id: 3, user_id: 1, favorite: false},
  {restaurant_id: 10, list_id: 3, user_id: 1, favorite: false},
  {restaurant_id: 11, list_id: 3, user_id: 1, favorite: false},
  {restaurant_id: 12, list_id: 3, user_id: 1, favorite: false}
])
Restaurant.create!([
  {yelp_id: "precita-park-cafe-san-francisco", name: "Precita Park Cafe", city: "San Francisco", state: "CA", zip: "94110", address: "500 Precita Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/precita-park-cafe-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/95sJrIg-lVKATMbUEdn_xw/ms.jpg", rating: 3.5, rating_img_url: "http://s3-media1.fl.yelpcdn.com/assets/2/www/img/5ef3eb3cb162/ico/stars/v1/stars_3_half.png", is_closed: false},
  {yelp_id: "hillside-supper-club-san-francisco-2", name: "Hillside Supper Club", city: "San Francisco", state: "CA", zip: "94110", address: "300 Precita Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/hillside-supper-club-san-francisco-2", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/_xakKQkFkRw5PhV9zdQp7A/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "pizzahacker-san-francisco-4", name: "PizzaHacker", city: "San Francisco", state: "CA", zip: "94110", address: "3299 Mission St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/pizzahacker-san-francisco-4", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/iphaJEQMbwOsJ8-iMynFiQ/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "saigon-sandwich-san-francisco", name: "Saigon Sandwich", city: "San Francisco", state: "CA", zip: "94102", address: "560 Larkin St", hood: "Tenderloin", url: "http://www.yelp.com/biz/saigon-sandwich-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/6MA4v5VI6FDPpjOBAfvJbw/ms.jpg", rating: 4.5, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/99493c12711e/ico/stars/v1/stars_4_half.png", is_closed: false},
  {yelp_id: "sing-sing-sandwich-shop-san-francisco", name: "Sing Sing Sandwich Shop", city: "San Francisco", state: "CA", zip: "94109", address: "309 Hyde St", hood: "Tenderloin", url: "http://www.yelp.com/biz/sing-sing-sandwich-shop-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/hvZECVt8WjumW4xQZRZGyg/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "balo-vietnamese-eatery-san-francisco", name: "Balo Vietnamese Eatery", city: "San Francisco", state: "CA", zip: "94102", address: "426 Larkin St", hood: "Civic Center", url: "http://www.yelp.com/biz/balo-vietnamese-eatery-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/nqEtGD6DmZObaELX3OkaBQ/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "lees-sandwiches-san-francisco", name: "Lee's Sandwiches", city: "San Francisco", state: "CA", zip: "94109", address: "625 Larkin St", hood: "Tenderloin", url: "http://www.yelp.com/biz/lees-sandwiches-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/P9FHgl3VSMNDVdF73o_6_Q/ms.jpg", rating: 3.0, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/34bc8086841c/ico/stars/v1/stars_3.png", is_closed: false},
  {yelp_id: "el-tonayense-taco-truck-san-francisco-8", name: "El Tonayense Taco Truck", city: "San Francisco", state: "CA", zip: "94103", address: "Best Buy 1717 Harrison St", hood: "Mission", url: "http://www.yelp.com/biz/el-tonayense-taco-truck-san-francisco-8", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/XY6Sf7ovAlvXnbpm9yuh4A/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "el-gallo-giro-taco-truck-san-francisco-2", name: "El Gallo Giro Taco Truck", city: "San Francisco", state: "CA", zip: "94110", address: "23rd St & Treat Ave", hood: "Mission", url: "http://www.yelp.com/biz/el-gallo-giro-taco-truck-san-francisco-2", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/-asTPgyektr_OBxoiT4dDA/ms.jpg", rating: 4.5, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/99493c12711e/ico/stars/v1/stars_4_half.png", is_closed: false},
  {yelp_id: "los-compadres-taco-truck-san-francisco-2", name: "Los Compadres Taco Truck", city: "San Francisco", state: "CA", zip: "94105", address: "Spear St & Folsom St", hood: "Financial District", url: "http://www.yelp.com/biz/los-compadres-taco-truck-san-francisco-2", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/ENGm6EO9Z0tN6BgVO4t33w/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "el-tonayense-taco-truck-san-francisco-4", name: "El Tonayense Taco Truck", city: "San Francisco", state: "CA", zip: "94103", address: "", hood: "SoMa", url: "http://www.yelp.com/biz/el-tonayense-taco-truck-san-francisco-4", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/zy1V1Lwq6ejyXcQOiXpinA/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false},
  {yelp_id: "el-norteno-taco-truck-san-francisco", name: "El Norteno Taco Truck", city: "San Francisco", state: "CA", zip: "94103", address: "801 Bryant St", hood: "SoMa", url: "http://www.yelp.com/biz/el-norteno-taco-truck-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/l8-SeEVosiw7zb3jWAnqJQ/ms.jpg", rating: 4.0, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/c2f3dd9799a5/ico/stars/v1/stars_4.png", is_closed: false}
])
User.create!([
  {username: "admin", password_digest: "$2a$10$z9LKUaaN0P5Z9z4mJdjpn.KfK7ahCUtivnfmb/2/imtrXlQBqm7Ym", session_token: "47ItgwdAO5-g_EhUyuxuhQ"}
])
