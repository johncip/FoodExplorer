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
- [ ] Make offline seed db

### JSON Templates
- [x] restaurant (index, show)
- [x] list (index, show)
- [x] listing (won't need?)

### List Views
- [x] Navbar (rough)
- [x] Lists Index (include count)
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
- [x] refactor: generic index action -> concern

### Later phases
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
