### Fix & Refactor
- [ ] Factor out common code in Backbone views
- [ ] has_dining_with_field

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
- [x] Sortable
  - [x] Fix bug: why is the restaurant collection emptying?
  - [x] Fix bug: sortable + rendering race condition
  - [x] Persist ordering changes
- [ ] Draggable
  - [ ] Change membership
  - [ ] Sort lists & restaurants in views
  - [ ] Put favorites first

### Feature: Google Maps
- [ ] {db} Promote latitude & longitude
- [x] Get Google Maps API key
- [ ] ... Incorporate Google Maps

### Add Restaurants
###### (depends on drag and drop)
- [ ] Play with Yelp search API
- [ ] Search view
- [ ] Results view
- [ ] Pagination

### Front End
- [ ] Use Bootstrap
- [ ] Random background for sign-in
- [ ] Google maps
- [ ] Different thumbs for lists

### Back End
- [ ] {db} Default to empty string for list description

### For Later
- [ ] Split index items & thumbs into favorites, non-favorites?
- [ ] Have image placeholder for offline
- [ ] Server config: don't expire assets, use gzip
- [ ] Reduce number of queries
- [ ] Git hook for rubocop
