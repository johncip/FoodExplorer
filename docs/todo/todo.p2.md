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
- [ ] Split index items & thumbs into favorites, non-favorites?

### Restaurant View
- [ ] Show Yelp ratings / reviews

### More Back End
- [ ] Create Dining
  - [ ] visited field
  - [ ] favorited field
    - [ ] Remove Listing.favorite from schema, model, templates
  - [ ] Notes field
- [ ] Change List
  - [ ] add private field
  - [ ] add description
  - [ ] add ord
- [ ] Change Listing
  - [ ] add ord
- [ ] Change User
  - [ ] add hometown
  - [ ] add guest
  - [ ] add avatar
  - [ ] add description

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
