# Phase II Todo

### Code Quality
- [x] Factor out common controller code -> concern
- [x] Document Resourceful

### Deployment
- [x] use Puma
- [x] keep dyno awake
- [x] fix login pic & production seed data

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
  - [x] Use cover for thumb image
- [x] Show (include restaurants & listings)
  - [x] Make the current list active in the index
  - [x] Rest. favorite badge
  - [x] Rest. visited badge
  - [x] Display description
  - [x] Hi-def thumb image (use cover)
  - [x] Hi-def rating image
  - [x] Use ordering
- [ ] Edit (be able to add & remove listings)
  - [ ] Edit summary

### Restaurant View
- [ ] Show Yelp ratings / reviews

### More Back End
- [x] Change List
  - [x] add private field
  - [x] add description
  - [x] add ord
  - [x] add model validations & #private?
- [x] Change Listing
  - [x] add ord
  - [x] add model validations
- [x] Change User
  - [x] add hometown
  - [x] add guest
  - [x] add avatar
  - [x] add description
  - [x] add model validations & #guest?
- [x] Move User auth code into concern

##### Dining Table
- [x] Generate model & migration
  - [x] fields: user, restaurant, visited, favorited, notes
  - [x] remove Listing.favorite: schema, model, templates
  - [x] fix seed data
- [x] Migrate
- [x] Add model validations
- [x] Add associations & conv. methods
- [x] Test in console
- [x] Add to API
- [x] Add index & uniqueness constraint
