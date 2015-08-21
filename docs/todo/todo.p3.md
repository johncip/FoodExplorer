### Next
- [ ] Draggable restaurants

### Feature: Google Maps
- [x] {db} Promote latitude & longitude
- [x] Get and use API key
- [x] Add map
- [x] Add markers
- [x] Fit map to markers
- [x] Fix map re-render bug
- [x] Fix click-too-fast bug
- [x] Highlight marker on thumb hover
- [x] Highlight thumb on marker hover

### Fix & Refactor
- [x] Use correct onRender pattern
- [ ] Factor out common code in Backbone views?
- [ ] has_dining_with_field
- [ ] use attributes hash in views
- [ ] be explicit about containers

### Feature: Restaurant show page
- [ ] Backbone view
- [ ] Backbone template
- [ ] Display visited & favorited
- [ ] Include map & add marker
- [ ] Fix thumbnail links to point to show page
- [ ] Make visited & favorited actions ("like" buttons)

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
- [x] Sortable List thumbs
  - [x] Use generic sortable mixin
- [ ] Draggable
  - [ ] Change membership
  - [ ] Sort lists & restaurants in views
  - [ ] Put favorites first

### Feature: Add Restaurants
###### (depends on drag and drop)
- [ ] Play with Yelp search API
- [ ] Search view
- [ ] Results view
- [ ] Pagination

### Front End
- [x] Fix thumb-box margin
- [ ] Use Bootstrap
- [ ] Random background for sign-in
- [ ] Different thumbs for lists

### Back End
- [x] Fix url-encoding issue (store yid unencoded & change lookup)

### Deployment
- [x] Git hook for Rubocop
- [x] Use rails cops

### Later
- [ ] Split index items & thumbs into favorites, non-favorites?
- [ ] Have image placeholder for offline
- [ ] Server config: don't expire assets, use gzip
- [ ] Reduce number of queries
- [ ] Reduce number of requests
- [ ] Loading throbber
- [ ] Show/hide map
- [ ] Fork marker icon (with shadows & proper z-index!)
- [ ] redo border/padding on thumbs
