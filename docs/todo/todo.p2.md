# Phase II Todo

### Deployment Continued
- [x] use Puma
- [x] keep dyno running
- [ ] replace new relic with heroku job

### Seed data & more back end
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
- [x] Lists Index (include count)
- [x] List Show (include restaurants & listings)
- [ ] Add summary to list, make it easily editable
- [ ] Make the current list active in the index
- [ ] List Edit (be able to add & remove listings)
- [ ] Show Yelp ratings / reviews
- [ ] Have image placeholder for offline
- [ ] *** Draggable
- [ ] Visited badge
- [ ] Favorite badge
- [ ] Display restaurants in order

### Eventually
- [ ] Split index items & thumbs into favorites, non-favorites

### More back end
- [ ] UserRestaurant table/model
- [ ] + Visited field
- [ ] + Favorited field
- [ ] Remove Listing.favorite from schema, model, templates
- [ ] Listing ord field

### Comments
 - [ ] generate model & migration
 - [ ] fix migration
 - [ ] generate api controller
 - [ ] migrate
 - [ ] add model validations
 - [ ] add associations
 - [ ] create backbone model & collection
 - [ ] add to API & parse method
 - [ ] add to templates
 - [ ] style

### Notes
- [ ] generate model & migration
- [ ] fix migration
- [ ] generate api controller
- [ ] migrate
- [ ] add model validations
- [ ] add associations
- [ ] create backbone model & collection
- [ ] add to API & parse method
- [ ] add to templates
- [ ] style

### Small changes
- [x] refactor: generic index action -> concern
- [ ] remove reliance on internet
- [ ] clean up nav bar

### Later phases
 - list view vs thumbs view
 - use badges for notifications
 - understand 12 factor app rationale
 - "Invitations" / sharing model
 - cool splash page (bubbles?)

#### Back end
- get city and state by ZIP code
- Lists can be private or public
- attribute map pattern for Restaurants?
- move "favorite" to a (user x restaurant) table

### Questions
 - what's a good way to cache the yelp images?

### Ideas
- configurable start page
- compositeView.placeSubview
