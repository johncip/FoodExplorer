# Phase II Todo

### Deployment
- [x] use Puma
- [ ] keep dyno awake

### Seed Data & Back End
- [x] get the Yelp gem
- [x] set up Yelp API (get key, etc.)
- [x] experiment with yelp gem in console
- [x] grab some restaurants from yelp for seeds
- [x] add a reload method for Restaurants (batch Yelp requests?)
- [x] Restaurant.find_or_create_by_yelp_id
- [x] List.new_listing_from_yelp_id
- [x] Alter restaurant schema
- [x] Ensure db uniqueness for yelp_id
- [x] Don't allow signed-in user to see login page
- [x] Make offline seed db

### JSON Templates
- [x] restaurant (index, show)
- [x] list (index, show)
- [x] listing (won't need?)

### List Views
- [x] Navbar (rough)
- [x] Index (include count)
- [x] Show (include restaurants & listings)
  - [x] Make the current list active in the index
  - [ ] Display summary
- [ ] Edit (be able to add & remove listings)
  - [ ] Edit summary
- [ ] Have image placeholder for offline
- [ ] Visited badge
- [ ] Favorite badge

### Restaurant View
- [ ] Show Yelp ratings / reviews

### Eventually
- [ ] Split index items & thumbs into favorites, non-favorites

### More Back End
- [ ] UserRestaurant table/model
  - [ ] Visited field
  - [ ] Favorited field
- [ ] List.private
- [ ] List.summary/description
- [ ] User/Restaurant favorite
  - [ ] Remove Listing.favorite from schema, model, templates
- [ ] Listing.ord

### Refactor
- [x] generic index action -> concern
- [ ] all views

#### Drag and Drop / Ordering
- [ ] Change ordering
- [ ] Change membership
- [ ] Sort lists & restaurants in views
- [ ] Put favorites first??

### Next
- [ ] Favorite badge
- [ ] Refactor: all views
