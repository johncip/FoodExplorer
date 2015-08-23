### Next
- [x] Fix duplicate logging
- [x] Reduce number of queries
- [-] Restaurant show page
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
- [x] Factor out common code in Backbone views
- [x] Move logout function into navbar view
- [x] Factor out getOrFetch
- [x] Refactor CSS (make selectors more generic)
- [x] Factor out Dining + flag pattern
- [ ] Make sidebar view a mixin (or extend compositeview)
- [ ] Don't use #/ in links

### Feature: Restaurant show page
- [x] Backbone view
- [x] Backbone template
- [x] Backbone route & action
- [x] Fix thumbnail links
- [x] Include map & add marker
- [x] Display visited & favorited
- [ ] Toggle visited & favorited
- [ ] Include Yelp stuff
- [ ] Style

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

### Deployment & Code Quality
- [x] Git hook for Rubocop
- [x] Use rails cops
- [x] Incorporate JS style checking
- [x] Fix duplicate logging

### Front End
- [x] Fix thumb-box margin
- [ ] Use Bootstrap
- [ ] Random background for sign-in
- [ ] Different thumbs for lists

### Back End
- [x] Fix url-encoding issue (store yid unencoded & change lookup)
- [x] Reduce number of queries
  - [x] Lists Index
  - [x] Listings Index
  - [x] List Show
  - [x] Restaurants Index
  - [x] Restaurant Show
  - [x] Listing Show
- [ ] Reduce number of renders

### Later
- [ ] Split index items & thumbs into favorites, non-favorites?
- [ ] Have image placeholder for offline
- [ ] Server config: don't expire assets, use gzip
- [ ] Reduce number of requests
- [ ] Loading throbber
- [ ] Show/hide map
- [ ] Fork marker icon (with shadows & proper z-index!)
- [ ] redo border/padding on thumbs
- [ ] be explicit about containers
- [ ] "be your own"
- [ ] Reduce queries even more
