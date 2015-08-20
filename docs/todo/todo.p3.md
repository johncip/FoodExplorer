### Next
- [ ] Un break lists
- [ ] Google maps
- [ ] Sortable lists
- [ ] Draggable restaurants

### Feature: Google Maps
- [ ] {db} Promote latitude & longitude
- [x] Get Google Maps API key
- [ ] Add map
- [ ] Add markers

### Fix & Refactor
- [ ] Factor out common code in Backbone views
- [ ] has_dining_with_field
- [ ] use attributes hash in views
- [ ] be explicit about containers

### Feature: Restaurant Notes
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

### Feature: Drag-and-drop
- [x] Sortable Restaurant thumbs
  - [x] Fix bug: why is the restaurant collection emptying?
  - [x] Fix bug: sortable + rendering race condition
  - [x] Controller update action
  - [x] Include listing in restaurant JSON
  - [x] Default scope needs to be sorted
  - [x] Don't make unnecessary PUT requests
- [ ] Sortable List thumbs
- [ ] Draggable
  - [ ] Change membership
  - [ ] Sort lists & restaurants in views
  - [ ] Put favorites first

### Add Restaurants
###### (depends on drag and drop)
- [ ] Play with Yelp search API
- [ ] Search view
- [ ] Results view
- [ ] Pagination

### Front End
- [x] Fix thumb-box margin
- [ ] Remove extra div around thumb box ul
- [ ] Use Bootstrap
- [ ] Random background for sign-in
- [ ] Different thumbs for lists

### Back End
- [x] Fix url-encoding issue (store yid unencoded & change lookup)
- [ ] {db} Default to empty string for list description

### For Later
- [x] Git hook for Rubocop
- [ ] rename phase_one branch
- [ ] Split index items & thumbs into favorites, non-favorites?
- [ ] Have image placeholder for offline
- [ ] Server config: don't expire assets, use gzip
- [ ] Reduce number of queries
- [ ] Reduce number of requests
- [ ] Loading throbber
