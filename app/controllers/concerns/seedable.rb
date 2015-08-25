# rubocop:disable all

module Seedable
  extend ActiveSupport::Concern

  def empty_db
    Dining.all.each &:delete
    Listing.all.each &:delete
    List.all.each &:delete
    Restaurant.all.each &:delete
    User.all.each &:delete
  end

  def rake_db_seed
    empty_db

    User.create!([
      {username: "admin", password_digest: "$2a$10$eTUq67CE6TXT3g.xi/bsK.UAqfz3iCoXWfPZFyL3jkNAFaiH7NXgC", session_token: "RG2RySBV36M-rjq06BtA1A", description: nil, location: nil, image_url: nil, guest: false}
    ])
    Restaurant.create!([
      {yelp_id: "precita-park-cafe-san-francisco", name: "Precita Park Cafe", city: "San Francisco", state: "CA", zip: "94110", address: "500 Precita Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/precita-park-cafe-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/95sJrIg-lVKATMbUEdn_xw/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.746972, lng: -122.410399},
      {yelp_id: "hillside-supper-club-san-francisco-2", name: "Hillside Supper Club", city: "San Francisco", state: "CA", zip: "94110", address: "300 Precita Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/hillside-supper-club-san-francisco-2", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/_xakKQkFkRw5PhV9zdQp7A/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7465489819735, lng: -122.41361618042},
      {yelp_id: "pizzahacker-san-francisco-4", name: "PizzaHacker", city: "San Francisco", state: "CA", zip: "94110", address: "3299 Mission St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/pizzahacker-san-francisco-4", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/iphaJEQMbwOsJ8-iMynFiQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7441289, lng: -122.4206997},
      {yelp_id: "lotus-garden-vietnamese-cuisine-san-francisco", name: "Lotus Garden Vietnamese Cuisine", city: "San Francisco", state: "CA", zip: "94110", address: "3216 Mission St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/lotus-garden-vietnamese-cuisine-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/88v_bJbUEV5p8ClJ6nN1Iw/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7452743798494, lng: -122.420156747103},
      {yelp_id: "little-bee-baking-san-francisco", name: "Little Bee Baking", city: "San Francisco", state: "CA", zip: "94110", address: "521 Cortland Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/little-bee-baking-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/jBN51zsZmC7UVViRyUYmfA/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.7391586, lng: -122.4160995},
      {yelp_id: "progressive-grounds-san-francisco", name: "Progressive Grounds", city: "San Francisco", state: "CA", zip: "94110", address: "400 Cortland Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/progressive-grounds-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/c5yPKDV4cjnrjxIfTpzBNA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7390518, lng: -122.4176483},
      {yelp_id: "sweet-basil-thai-cuisine-san-francisco-2", name: "Sweet Basil Thai Cuisine", city: "San Francisco", state: "CA", zip: "94110", address: "3221 Mission St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/sweet-basil-thai-cuisine-san-francisco-2", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/Uzslq3BSfT073n8cjtGNlQ/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7452561, lng: -122.4200924},
      {yelp_id: "harvest-hills-market-san-francisco", name: "Harvest Hills Market", city: "San Francisco", state: "CA", zip: "94110", address: "3216 Folsom St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/harvest-hills-market-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/8Fj0e6IQpf-sdUqYZdxjdA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.74671, lng: -122.413809},
      {yelp_id: "the-epicurean-trader-san-francisco", name: "The Epicurean Trader", city: "San Francisco", state: "CA", zip: "94110", address: "401 Cortland Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/the-epicurean-trader-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/TnkvJswJH44qi9gr6dH-Xw/l.jpg", rating: 5.0, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/22affc4e6c38/ico/stars/v1/stars_large_5.png", is_closed: false, lat: 37.7392085641623, lng: -122.417601272464},
      {yelp_id: "coffeeshop-san-francisco", name: "CoffeeShop", city: "San Francisco", state: "CA", zip: "94110", address: "3139 Mission St", hood: "Bernal Heights", url: "http://www.yelp.com/biz/coffeeshop-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/HTeV9JJNEQoiUsSDfAzRGA/l.jpg", rating: 5.0, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/22affc4e6c38/ico/stars/v1/stars_large_5.png", is_closed: false, lat: 37.7470855, lng: -122.4187899},
      {yelp_id: "red-hill-station-san-francisco", name: "Red Hill Station", city: "San Francisco", state: "CA", zip: "94110", address: "803 Cortland Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/red-hill-station-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/tX6Q6r_Nwl3K0lc3yW4Siw/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7390785217285, lng: -122.414459228516},
      {yelp_id: "saigon-sandwich-san-francisco", name: "Saigon Sandwich", city: "San Francisco", state: "CA", zip: "94102", address: "560 Larkin St", hood: "Tenderloin", url: "http://www.yelp.com/biz/saigon-sandwich-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/6MA4v5VI6FDPpjOBAfvJbw/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.783059744376, lng: -122.4173367975},
      {yelp_id: "sing-sing-sandwich-shop-san-francisco", name: "Sing Sing Sandwich Shop", city: "San Francisco", state: "CA", zip: "94109", address: "309 Hyde St", hood: "Tenderloin", url: "http://www.yelp.com/biz/sing-sing-sandwich-shop-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/hvZECVt8WjumW4xQZRZGyg/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7836936712265, lng: -122.415980547667},
      {yelp_id: "balo-vietnamese-eatery-san-francisco", name: "Balo Vietnamese Eatery", city: "San Francisco", state: "CA", zip: "94102", address: "426 Larkin St", hood: "Civic Center", url: "http://www.yelp.com/biz/balo-vietnamese-eatery-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/nqEtGD6DmZObaELX3OkaBQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7817597985268, lng: -122.41715669632},
      {yelp_id: "lees-sandwiches-san-francisco", name: "Lee's Sandwiches", city: "San Francisco", state: "CA", zip: "94109", address: "625 Larkin St", hood: "Tenderloin", url: "http://www.yelp.com/biz/lees-sandwiches-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/P9FHgl3VSMNDVdF73o_6_Q/l.jpg", rating: 3.0, rating_img_url: "http://s3-media1.fl.yelpcdn.com/assets/2/www/img/e8b5b79d37ed/ico/stars/v1/stars_large_3.png", is_closed: false, lat: 37.783623, lng: -122.417862},
      {yelp_id: "the-chairman-truck-san-francisco", name: "The Chairman Truck", city: "San Francisco", state: "CA", zip: "94102", address: "", hood: "Hayes Valley", url: "http://www.yelp.com/biz/the-chairman-truck-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/dXEQlPCirJp5qhFSXsiQFw/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.77942, lng: -122.42175},
      {yelp_id: "waffle-mania-truck-san-francisco", name: "Waffle Mania Truck", city: "San Francisco", state: "CA", zip: "94102", address: "Civic Center Farmer's Market 1182 Market St", hood: "Civic Center", url: "http://www.yelp.com/biz/waffle-mania-truck-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/Ylg0wld7GmRUt3VxZxbujQ/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.7795342481134, lng: -122.414517402649},
      {yelp_id: "voodoo-van-san-francisco", name: "Voodoo Van", city: "San Francisco", state: "CA", zip: "94124", address: "2250 Jerrold Ave Ste 11", hood: "Bayview-Hunters Point", url: "http://www.yelp.com/biz/voodoo-van-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/-tiQOa6J0hg-WWU48KUVdQ/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7456703186035, lng: -122.400085449219},
      {yelp_id: "el-sur-san-francisco", name: "El Sur", city: "San Francisco", state: "CA", zip: "94117", address: "", hood: "The Haight", url: "http://www.yelp.com/biz/el-sur-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/qJvAvhOBYcdbVzNE-8Eb1w/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.7717185, lng: -122.4438929},
      {yelp_id: "curry-up-now-san-francisco-6", name: "Curry Up Now", city: "San Francisco", state: "CA", zip: "94104", address: "225 Bush St", hood: "Financial District", url: "http://www.yelp.com/biz/curry-up-now-san-francisco-6", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/dcuWkf5ERh4N5V7zCtETsQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7910766392, lng: -122.401035453},
      {yelp_id: "el-porteño-empanadas-san-francisco-4", name: "El Porteño Empanadas", city: "San Francisco", state: "CA", zip: "94111", address: "1 Ferry Bldg", hood: "Embarcadero", url: "http://www.yelp.com/biz/el-porte%C3%B1o-empanadas-san-francisco-4", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/tZpL9qWeqrqZ-EeBAgp75A/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.795318365097, lng: -122.393873780966},
      {yelp_id: "me-so-hungry-san-francisco", name: "Me So Hungry", city: "San Francisco", state: "CA", zip: "94107", address: "", hood: "Potrero Hill", url: "http://www.yelp.com/biz/me-so-hungry-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/FSqLcD4nm5ZGBUg7UKH4QA/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7618242, lng: -122.3985871},
      {yelp_id: "bar-tartine-san-francisco", name: "Bar Tartine", city: "San Francisco", state: "CA", zip: "94110", address: "561 Valencia St", hood: "Mission", url: "http://www.yelp.com/biz/bar-tartine-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/IKYHUvDlZ_WKFeyJj4Za9Q/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7639586478472, lng: -122.42174461484},
      {yelp_id: "chino-san-francisco-3", name: "Chino", city: "San Francisco", state: "CA", zip: "94103", address: "3198 16th St", hood: "Mission", url: "http://www.yelp.com/biz/chino-san-francisco-3", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/D9ZRVE1G3nsE7fIb1rUhGQ/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7648350596428, lng: -122.423931285739},
      {yelp_id: "delfina-san-francisco", name: "Delfina", city: "San Francisco", state: "CA", zip: "94110", address: "3621 18th St", hood: "Mission", url: "http://www.yelp.com/biz/delfina-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/g__DxNgTSOUcCPhAJwzSMw/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.76131, lng: -122.42431},
      {yelp_id: "domo-san-francisco", name: "Domo", city: "San Francisco", state: "CA", zip: "94102", address: "511 Laguna St", hood: "Hayes Valley", url: "http://www.yelp.com/biz/domo-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/3hWpge_JuWuOtC36fk7e0g/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7758598, lng: -122.4263077},
      {yelp_id: "dosa-on-fillmore-san-francisco-3", name: "Dosa on Fillmore", city: "San Francisco", state: "CA", zip: "94115", address: "1700 Fillmore St", hood: "Japantown", url: "http://www.yelp.com/biz/dosa-on-fillmore-san-francisco-3", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/kwuJnHpQQFU90qrqCKEmcQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.785358, lng: -122.432838},
      {yelp_id: "dosa-on-valencia-san-francisco", name: "Dosa on Valencia", city: "San Francisco", state: "CA", zip: "94110", address: "995 Valencia St", hood: "Mission", url: "http://www.yelp.com/biz/dosa-on-valencia-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/YOddDN4OGPGaQ7Sioz1KtA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7570921927691, lng: -122.421059310436},
      {yelp_id: "flour-water-san-francisco", name: "Flour + Water", city: "San Francisco", state: "CA", zip: "94110", address: "2401 Harrison St", hood: "Mission", url: "http://www.yelp.com/biz/flour-water-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/TncWKf9mHyebS2m5BIFEgg/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7589188, lng: -122.4123077},
      {yelp_id: "m-y-china-san-francisco-2", name: "M.Y. China", city: "San Francisco", state: "CA", zip: "94103", address: "Westfield San Francisco Centre 845 Market St, 4th Fl", hood: "Union Square", url: "http://www.yelp.com/biz/m-y-china-san-francisco-2", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/MfD1on4bCDopxim2NBMNtg/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.7844862806859, lng: -122.407055497169},
      {yelp_id: "mamacita-san-francisco", name: "Mamacita", city: "San Francisco", state: "CA", zip: "94123", address: "2317 Chestnut St", hood: "Marina/Cow Hollow", url: "http://www.yelp.com/biz/mamacita-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/PT-pwCYdtUcNEEsUfSA-lA/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.799881, lng: -122.4414597},
      {yelp_id: "perbacco-san-francisco", name: "Perbacco", city: "San Francisco", state: "CA", zip: "94111", address: "230 California St", hood: "Financial District", url: "http://www.yelp.com/biz/perbacco-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/mfbIJwcqn1K9AmOxuVzkOg/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.793554, lng: -122.399342},
      {yelp_id: "rich-table-san-francisco", name: "Rich Table", city: "San Francisco", state: "CA", zip: "94102", address: "199 Gough St", hood: "Hayes Valley", url: "http://www.yelp.com/biz/rich-table-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/5JqhPXNnDmg6erpa_0KCTg/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.774849, lng: -122.422844},
      {yelp_id: "starbelly-san-francisco", name: "Starbelly", city: "San Francisco", state: "CA", zip: "94114", address: "3583 16th St", hood: "Castro", url: "http://www.yelp.com/biz/starbelly-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/ANfKPbmYihqtF3C8tFb27A/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.764196421676, lng: -122.43258136227},
      {yelp_id: "yank-sing-san-francisco-2", name: "Yank Sing", city: "San Francisco", state: "CA", zip: "94105", address: "101 Spear St", hood: "Financial District", url: "http://www.yelp.com/biz/yank-sing-san-francisco-2", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/QUtKfiScmdw_1zUWAwT1qA/l.jpg", rating: 3.5, rating_img_url: "http://s3-media3.fl.yelpcdn.com/assets/2/www/img/bd9b7a815d1b/ico/stars/v1/stars_large_3_half.png", is_closed: false, lat: 37.792711, lng: -122.393362},
      {yelp_id: "yuzuki-japanese-eatery-san-francisco", name: "Yuzuki Japanese Eatery", city: "San Francisco", state: "CA", zip: "94110", address: "598 Guerrero St", hood: "Mission", url: "http://www.yelp.com/biz/yuzuki-japanese-eatery-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/FqotboC9UAmu6myRTm-_RQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.761675769753, lng: -122.424020469189},
      {yelp_id: "blue-bottle-coffee-co-san-francisco-7", name: "Blue Bottle Coffee Co", city: "San Francisco", state: "CA", zip: "94103", address: "66 Mint St", hood: "SoMa", url: "http://www.yelp.com/biz/blue-bottle-coffee-co-san-francisco-7", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/tRYxeXnABsIcNp26eebmjA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.782352, lng: -122.407697},
      {yelp_id: "blue-bottle-coffee-san-francisco-9", name: "Blue Bottle Coffee", city: "San Francisco", state: "CA", zip: "94110", address: "Heath Ceramics 2900 18th St", hood: "Mission", url: "http://www.yelp.com/biz/blue-bottle-coffee-san-francisco-9", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/703jVorm6gDQE_0Kdz1yNw/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7617754313073, lng: -122.411786913872},
      {yelp_id: "ritual-coffee-roasters-san-francisco-5", name: "Ritual Coffee Roasters", city: "San Francisco", state: "CA", zip: "94102", address: "432b Octavia St", hood: "Hayes Valley", url: "http://www.yelp.com/biz/ritual-coffee-roasters-san-francisco-5", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/u6-TRJZHJWiKvw1jRRnNMA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.77646571106, lng: -122.42434780212},
      {yelp_id: "four-barrel-coffee-san-francisco", name: "Four Barrel Coffee", city: "San Francisco", state: "CA", zip: "94103", address: "375 Valencia St", hood: "Mission", url: "http://www.yelp.com/biz/four-barrel-coffee-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/mSxpbsrpvHCQUFIVReGzxw/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7670851470221, lng: -122.421940218192},
      {yelp_id: "sightglass-coffee-san-francisco", name: "Sightglass Coffee", city: "San Francisco", state: "CA", zip: "94103", address: "270 7th St", hood: "SoMa", url: "http://www.yelp.com/biz/sightglass-coffee-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/NIcP2dFwZ2WhbjXE96e9WA/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7769585, lng: -122.4085083},
      {yelp_id: "equator-coffees-and-teas-san-francisco", name: "Equator Coffees & Teas", city: "San Francisco", state: "CA", zip: "94102", address: "986 Market St", hood: "Union Square", url: "http://www.yelp.com/biz/equator-coffees-and-teas-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/Cna8yccYFNsUvuKso2r2EQ/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7826422914878, lng: -122.409869469702},
      {yelp_id: "philz-coffee-san-francisco", name: "Philz Coffee", city: "San Francisco", state: "CA", zip: "94110", address: "3101 24th St", hood: "Mission", url: "http://www.yelp.com/biz/philz-coffee-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/n-oSziRhsVRHHUE5pT-rJA/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.752397102831, lng: -122.41426366546},
      {yelp_id: "humphry-slocombe-ice-cream-san-francisco", name: "Humphry Slocombe Ice Cream", city: "San Francisco", state: "CA", zip: "94110", address: "2790A Harrison St", hood: "Mission", url: "http://www.yelp.com/biz/humphry-slocombe-ice-cream-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/b29oDqhzWrK-IIVcmf0F0g/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.752945349973, lng: -122.41213981154},
      {yelp_id: "easy-breezy-frozen-yogurt-san-francisco", name: "Easy Breezy Frozen Yogurt", city: "San Francisco", state: "CA", zip: "94114", address: "4028 24th St", hood: "Noe Valley", url: "http://www.yelp.com/biz/easy-breezy-frozen-yogurt-san-francisco", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/WMxD2Rv8yJsEmLxCJsBLyw/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.7514334022999, lng: -122.432576715946},
      {yelp_id: "mitchells-ice-cream-san-francisco", name: "Mitchell's Ice Cream", city: "San Francisco", state: "CA", zip: "94110", address: "688 San Jose Ave", hood: "Bernal Heights", url: "http://www.yelp.com/biz/mitchells-ice-cream-san-francisco", image_url: "http://s3-media3.fl.yelpcdn.com/bphoto/4-CJAD0mb-BMYEYV-AVAiQ/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.744233, lng: -122.422782},
      {yelp_id: "bi-rite-creamery-san-francisco", name: "Bi-Rite Creamery", city: "San Francisco", state: "CA", zip: "94110", address: "3692 18th St", hood: "Mission", url: "http://www.yelp.com/biz/bi-rite-creamery-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/_yV-Smm3FdqAa0f-EpzrFA/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.761583707335, lng: -122.42550478335},
      {yelp_id: "miyako-old-fashioned-ice-cream-san-francisco", name: "Miyako Old Fashioned Ice Cream", city: "San Francisco", state: "CA", zip: "94118", address: "1470 Fillmore St", hood: "Fillmore", url: "http://www.yelp.com/biz/miyako-old-fashioned-ice-cream-san-francisco", image_url: "http://s3-media2.fl.yelpcdn.com/bphoto/KdjbwY8OZ9eFoc4ER0BUdA/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.7829802036285, lng: -122.432589456439},
      {yelp_id: "smitten-ice-cream-san-francisco-3", name: "Smitten Ice Cream", city: "San Francisco", state: "CA", zip: "94102", address: "432 Octavia St Ste 1A", hood: "Hayes Valley", url: "http://www.yelp.com/biz/smitten-ice-cream-san-francisco-3", image_url: "http://s3-media1.fl.yelpcdn.com/bphoto/e852CtB66nGf0bsbelyugg/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7763565191203, lng: -122.424203597963},
      {yelp_id: "st-francis-fountain-san-francisco", name: "St. Francis Fountain", city: "San Francisco", state: "CA", zip: "94110", address: "2801 24th St", hood: "Mission", url: "http://www.yelp.com/biz/st-francis-fountain-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/BrnT0pvrfaCTOBMAbjvzqg/l.jpg", rating: 4.0, rating_img_url: "http://s3-media2.fl.yelpcdn.com/assets/2/www/img/ccf2b76faa2c/ico/stars/v1/stars_large_4.png", is_closed: false, lat: 37.7526473999023, lng: -122.408340454102},
      {yelp_id: "swensens-ice-cream-san-francisco", name: "Swensen's Ice Cream", city: "San Francisco", state: "CA", zip: "94109", address: "1999 Hyde St", hood: "Russian Hill", url: "http://www.yelp.com/biz/swensens-ice-cream-san-francisco", image_url: "http://s3-media4.fl.yelpcdn.com/bphoto/JL-nyN4HsWVhvxG0LwMOVQ/l.jpg", rating: 4.5, rating_img_url: "http://s3-media4.fl.yelpcdn.com/assets/2/www/img/9f83790ff7f6/ico/stars/v1/stars_large_4_half.png", is_closed: false, lat: 37.799060176704, lng: -122.41916140154}
    ])

    admin = User.first

    List.create!([
      {author: admin, title: "Red Hill Favorites", favorite: true, description: "The best around Bernal.", private: false, ord: 0},
      {author: admin, title: "Bahn Mi Near a/A", favorite: false, description: "App Academy students love their bahn mi. Make sure to start with Saigon.", private: false, ord: 0},
      {author: admin, title: "Cool Food Trucks", favorite: false, description: "Meals on wheels.", private: false, ord: 0},
      {author: admin, title: "Bib Gourmand 2015", favorite: false, description: "The best restaurants that won't break the bank. Maybe.", private: false, ord: 0},
      {author: admin, title: "Good Coffee", favorite: false, description: "The best brews around SF.", private: false, ord: 0},
      {author: admin, title: "Ice Cream", favorite: true, description: "Almost as important as food.", private: false, ord: 0}
    ])

    lists = List.all.to_a.unshift(nil)
    restaurants = Restaurant.all.to_a.unshift(nil)

    Listing.create!([
      {restaurant: restaurants[1], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[2], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[3], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[4], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[5], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[6], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[7], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[8], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[9], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[10], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[11], list: lists[1], contributor: admin, ord: 0},
      {restaurant: restaurants[12], list: lists[2], contributor: admin, ord: 0},
      {restaurant: restaurants[13], list: lists[2], contributor: admin, ord: 0},
      {restaurant: restaurants[14], list: lists[2], contributor: admin, ord: 0},
      {restaurant: restaurants[15], list: lists[2], contributor: admin, ord: 0},
      {restaurant: restaurants[16], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[17], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[18], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[19], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[20], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[21], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[22], list: lists[3], contributor: admin, ord: 0},
      {restaurant: restaurants[23], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[24], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[25], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[26], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[27], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[28], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[29], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[30], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[31], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[32], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[33], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[34], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[35], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[36], list: lists[4], contributor: admin, ord: 0},
      {restaurant: restaurants[37], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[38], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[39], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[40], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[41], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[42], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[6], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[10], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[43], list: lists[5], contributor: admin, ord: 0},
      {restaurant: restaurants[44], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[45], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[46], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[47], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[48], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[49], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[50], list: lists[6], contributor: admin, ord: 0},
      {restaurant: restaurants[51], list: lists[6], contributor: admin, ord: 0}
    ])
    Dining.create!([
      {diner: admin, restaurant: restaurants[45], visited: true, favorite: true, notes: ""},
      {diner: admin, restaurant: restaurants[1], visited: true, favorite: true, notes: ""},
      {diner: admin, restaurant: restaurants[5], visited: true, favorite: false, notes: ""},
      {diner: admin, restaurant: restaurants[6], visited: false, favorite: true, notes: ""},
      {diner: admin, restaurant: restaurants[28], visited: true, favorite: false, notes: ""}
    ])
  end
end
