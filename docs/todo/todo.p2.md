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
- [ ] Cache the image url
- [ ] Don't allow signed-in user to see login page

### JSON Templates
- [x] restaurant (index, show)
- [x] list (index, show)
- [x] listing (won't need?)

### List Views
- [x] Navbar (rough)
- [ ] Lists Index (include count)
- [ ] List Show (include restaurants & listings)
- [ ] List Edit (be able to add & remove listings)

### Comments
 - [ ] generate model & migration
 - [ ] fix migration
 - [ ] generate api controller
 - [ ] migrate
 - [ ] add model validations
 - [ ] add associations

### Notes
- [ ] generate model & migration
- [ ] fix migration
- [ ] generate api controller
- [ ] migrate
- [ ] add model validations
- [ ] add associations

### Small changes
- [ ] Add rating to restaurants
- [x] refactor: generic index action -> concern

### Slate for later phases
 - use badges for notifications
 - understand 12 factor app rationale
 - get city and state by ZIP code
 - "Invitations" / sharing model
 - Lists can be private or public
 - cool splash page
 - ensure db uniqueness for yelp_id
 - attribute map pattern for Restaurants
 - favorite restaurants

### Questions
 - what's a good way to cache the yelp images?
